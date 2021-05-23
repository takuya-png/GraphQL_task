Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :blog, !Types::BlogType do
    # description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      ctx[:blog]
    }
  end
end
