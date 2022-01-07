
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * quals; } ;
struct TYPE_4__ {int * havingQual; TYPE_2__* jointree; } ;
typedef TYPE_1__ Query ;
typedef int Node ;
typedef TYPE_2__ FromExpr ;


 int FindNodeCheck (int *,int ) ;
 int IsNodeSubquery ;

bool
WhereOrHavingClauseContainsSubquery(Query *query)
{
 FromExpr *joinTree = query->jointree;
 Node *queryQuals = ((void*)0);

 if (FindNodeCheck(query->havingQual, IsNodeSubquery))
 {
  return 1;
 }

 if (!joinTree)
 {
  return 0;
 }

 queryQuals = joinTree->quals;

 return FindNodeCheck(queryQuals, IsNodeSubquery);
}
