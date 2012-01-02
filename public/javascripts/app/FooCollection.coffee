define ['backbone', 'cs!Foo'], (Backbone, Foo) ->
	class FooCollection extends Backbone.Collection
		model: Foo
		url: 'foos'
		foos: -> @filter (x) -> x.get('name') is 'Foo'
		bars: -> @filter (x) -> x.get('name') is 'Bar'