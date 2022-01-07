
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ** simple_rte_array; } ;
struct TYPE_5__ {int relids; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef int RecurringTuplesType ;
typedef int RangeTblEntry ;
typedef TYPE_2__ PlannerInfo ;


 int IsRecurringRTE (int *,int *) ;
 int bms_copy (int ) ;
 int bms_first_member (int ) ;

__attribute__((used)) static bool
RelationInfoContainsOnlyRecurringTuples(PlannerInfo *plannerInfo,
          RelOptInfo *relationInfo)
{
 RecurringTuplesType recurType;
 Relids relids = bms_copy(relationInfo->relids);
 int relationId = -1;

 while ((relationId = bms_first_member(relids)) >= 0)
 {
  RangeTblEntry *rangeTableEntry = plannerInfo->simple_rte_array[relationId];


  if (!IsRecurringRTE(rangeTableEntry, &recurType))
  {
   return 0;
  }
 }

 return 1;
}
