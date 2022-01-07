
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* jointree; scalar_t__ setOperations; } ;
struct TYPE_12__ {scalar_t__ quals; } ;
typedef int RecursivePlanningContext ;
typedef TYPE_2__ Query ;
typedef int Node ;
typedef int DeferredErrorMessage ;


 int RecursivelyPlanAllSubqueries (int *,int *) ;
 int * RecursivelyPlanCTEs (TYPE_2__*,int *) ;
 int RecursivelyPlanNonColocatedSubqueries (TYPE_2__*,int *) ;
 int RecursivelyPlanSetOperations (TYPE_2__*,int *,int *) ;
 int RecursivelyPlanSubqueryWalker ;
 scalar_t__ ShouldRecursivelyPlanAllSubqueriesInWhere (TYPE_2__*) ;
 scalar_t__ ShouldRecursivelyPlanNonColocatedSubqueries (TYPE_2__*,int *) ;
 scalar_t__ ShouldRecursivelyPlanSetOperation (TYPE_2__*,int *) ;
 scalar_t__ SubqueryPushdown ;
 int WrapFunctionsInSubqueries (TYPE_2__*) ;
 int query_tree_walker (TYPE_2__*,int ,int *,int ) ;

__attribute__((used)) static DeferredErrorMessage *
RecursivelyPlanSubqueriesAndCTEs(Query *query, RecursivePlanningContext *context)
{
 DeferredErrorMessage *error = ((void*)0);

 error = RecursivelyPlanCTEs(query, context);
 if (error != ((void*)0))
 {
  return error;
 }

 if (SubqueryPushdown)
 {
  return ((void*)0);
 }


 WrapFunctionsInSubqueries(query);


 query_tree_walker(query, RecursivelyPlanSubqueryWalker, context, 0);
 if (ShouldRecursivelyPlanSetOperation(query, context))
 {
  RecursivelyPlanSetOperations(query, (Node *) query->setOperations, context);
 }






 if (ShouldRecursivelyPlanAllSubqueriesInWhere(query))
 {

  RecursivelyPlanAllSubqueries((Node *) query->jointree->quals, context);
 }





 if (ShouldRecursivelyPlanNonColocatedSubqueries(query, context))
 {
  RecursivelyPlanNonColocatedSubqueries(query, context);
 }

 return ((void*)0);
}
