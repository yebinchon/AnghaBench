
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int join_rel_list; } ;
struct TYPE_5__ {scalar_t__ reloptkind; int relids; TYPE_2__* subroot; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;


 scalar_t__ RELOPT_BASEREL ;
 scalar_t__ RELOPT_JOINREL ;
 scalar_t__ bms_num_members (int ) ;
 TYPE_1__* linitial (int ) ;
 scalar_t__ list_length (int ) ;

__attribute__((used)) static bool
ShouldRecurseForRecurringTuplesJoinChecks(RelOptInfo *relOptInfo)
{
 bool shouldRecurse = 1;
 if (relOptInfo->reloptkind == RELOPT_JOINREL)
 {
  return 0;
 }
 if (relOptInfo->reloptkind == RELOPT_BASEREL && relOptInfo->subroot != ((void*)0))
 {
  PlannerInfo *subroot = relOptInfo->subroot;

  if (list_length(subroot->join_rel_list) > 0)
  {
   RelOptInfo *subqueryJoin = linitial(subroot->join_rel_list);
   if (bms_num_members(subqueryJoin->relids) > 0)
   {
    shouldRecurse = 0;
   }
  }
 }

 return shouldRecurse;
}
