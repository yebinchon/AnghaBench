
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * quals; } ;
struct TYPE_4__ {int rtable; TYPE_2__* jointree; } ;
typedef TYPE_1__ Query ;
typedef int Node ;
typedef TYPE_2__ FromExpr ;


 scalar_t__ FindNodeCheckInRangeTableList (int ,int ) ;
 int IsDistributedTableRTE ;

__attribute__((used)) static bool
ShouldRecursivelyPlanAllSubqueriesInWhere(Query *query)
{
 FromExpr *joinTree = ((void*)0);
 Node *whereClause = ((void*)0);

 joinTree = query->jointree;
 if (joinTree == ((void*)0))
 {

  return 0;
 }

 whereClause = joinTree->quals;
 if (whereClause == ((void*)0))
 {

  return 0;
 }

 if (FindNodeCheckInRangeTableList(query->rtable, IsDistributedTableRTE))
 {

  return 0;
 }

 return 1;
}
