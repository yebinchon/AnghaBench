
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hasSubLinks; } ;
typedef scalar_t__ RecurringTuplesType ;
typedef TYPE_1__ Query ;
typedef int DeferredErrorMessage ;


 int * DeferredError (int ,char*,char*,int *) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 scalar_t__ FromClauseRecurringTupleType (TYPE_1__*) ;
 scalar_t__ RECURRING_TUPLES_EMPTY_JOIN_TREE ;
 scalar_t__ RECURRING_TUPLES_FUNCTION ;
 scalar_t__ RECURRING_TUPLES_INVALID ;
 scalar_t__ RECURRING_TUPLES_REFERENCE_TABLE ;
 scalar_t__ RECURRING_TUPLES_RESULT_FUNCTION ;

__attribute__((used)) static DeferredErrorMessage *
DeferErrorIfFromClauseRecurs(Query *queryTree)
{
 RecurringTuplesType recurType = RECURRING_TUPLES_INVALID;

 if (!queryTree->hasSubLinks)
 {
  return ((void*)0);
 }

 recurType = FromClauseRecurringTupleType(queryTree);
 if (recurType == RECURRING_TUPLES_REFERENCE_TABLE)
 {
  return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
        "cannot pushdown the subquery",
        "Reference tables are not allowed in FROM "
        "clause when the query has subqueries in "
        "WHERE clause and it references a column "
        "from another query", ((void*)0));
 }
 else if (recurType == RECURRING_TUPLES_FUNCTION)
 {
  return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
        "cannot pushdown the subquery",
        "Functions are not allowed in FROM "
        "clause when the query has subqueries in "
        "WHERE clause and it references a column "
        "from another query", ((void*)0));
 }
 else if (recurType == RECURRING_TUPLES_RESULT_FUNCTION)
 {
  return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
        "cannot pushdown the subquery",
        "Complex subqueries and CTEs are not allowed in "
        "the FROM clause when the query has subqueries in the "
        "WHERE clause and it references a column "
        "from another query", ((void*)0));
 }
 else if (recurType == RECURRING_TUPLES_EMPTY_JOIN_TREE)
 {
  return DeferredError(ERRCODE_FEATURE_NOT_SUPPORTED,
        "cannot pushdown the subquery",
        "Subqueries without FROM are not allowed in FROM "
        "clause when the outer query has subqueries in "
        "WHERE clause and it references a column "
        "from another query", ((void*)0));
 }
 return ((void*)0);
}
