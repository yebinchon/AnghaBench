
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* jointree; int * targetList; } ;
struct TYPE_6__ {int * quals; } ;
typedef TYPE_2__ Query ;
typedef int PlannedStmt ;
typedef int ParamListInfo ;
typedef int Node ;
typedef int List ;


 int * GeneratePlaceHolderPlannedStmt (TYPE_2__*) ;
 int * ResolveExternalParams (int *,int ) ;
 int copyParamList (int ) ;
 scalar_t__ eval_const_expressions (int *,int *) ;

PlannedStmt *
FastPathPlanner(Query *originalQuery, Query *parse, ParamListInfo boundParams)
{
 PlannedStmt *result = ((void*)0);
 originalQuery->jointree->quals =
  ResolveExternalParams((Node *) originalQuery->jointree->quals,
         copyParamList(boundParams));





 parse->targetList =
  (List *) eval_const_expressions(((void*)0), (Node *) parse->targetList);
 parse->jointree->quals =
  (Node *) eval_const_expressions(((void*)0), (Node *) parse->jointree->quals);


 result = GeneratePlaceHolderPlannedStmt(originalQuery);

 return result;
}
