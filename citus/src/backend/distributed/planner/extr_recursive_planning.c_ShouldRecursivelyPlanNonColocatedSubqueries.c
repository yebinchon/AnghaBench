
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int rtable; } ;
struct TYPE_7__ {int plannerRestrictionContext; scalar_t__ allDistributionKeysInQueryAreEqual; } ;
typedef TYPE_1__ RecursivePlanningContext ;
typedef TYPE_2__ Query ;


 int AllDistributionKeysInSubqueryAreEqual (TYPE_2__*,int ) ;
 int ContainsSubquery (TYPE_2__*) ;
 scalar_t__ FindNodeCheckInRangeTableList (int ,int ) ;
 int IsLocalTableRTE ;

__attribute__((used)) static bool
ShouldRecursivelyPlanNonColocatedSubqueries(Query *subquery,
           RecursivePlanningContext *context)
{




 if (context->allDistributionKeysInQueryAreEqual)
 {
  return 0;
 }
 if (!ContainsSubquery(subquery))
 {
  return 0;
 }


 if (FindNodeCheckInRangeTableList(subquery->rtable, IsLocalTableRTE))
 {
  return 0;
 }




 if (!AllDistributionKeysInSubqueryAreEqual(subquery,
              context->plannerRestrictionContext))
 {
  return 1;
 }

 return 0;
}
