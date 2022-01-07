
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* sjinfo; int restrictlist; } ;
struct TYPE_13__ {int * outerrel; int * innerrel; int * plannerInfo; int * joinRestrictInfoList; int joinType; } ;
struct TYPE_12__ {int joinRestrictionList; } ;
struct TYPE_11__ {int hasSemiJoin; TYPE_3__* joinRestrictionContext; int * memoryContext; } ;
struct TYPE_10__ {scalar_t__ jointype; } ;
typedef int RelOptInfo ;
typedef TYPE_2__ PlannerRestrictionContext ;
typedef int PlannerInfo ;
typedef int * MemoryContext ;
typedef int List ;
typedef int JoinType ;
typedef TYPE_3__ JoinRestrictionContext ;
typedef TYPE_4__ JoinRestriction ;
typedef TYPE_5__ JoinPathExtraData ;


 int Assert (int ) ;
 TYPE_2__* CurrentPlannerRestrictionContext () ;
 scalar_t__ JOIN_SEMI ;
 int * MemoryContextSwitchTo (int *) ;
 int * NIL ;
 int * copyObject (int ) ;
 int lappend (int ,TYPE_4__*) ;
 TYPE_4__* palloc0 (int) ;

void
multi_join_restriction_hook(PlannerInfo *root,
       RelOptInfo *joinrel,
       RelOptInfo *outerrel,
       RelOptInfo *innerrel,
       JoinType jointype,
       JoinPathExtraData *extra)
{
 PlannerRestrictionContext *plannerRestrictionContext = ((void*)0);
 JoinRestrictionContext *joinRestrictionContext = ((void*)0);
 JoinRestriction *joinRestriction = ((void*)0);
 MemoryContext restrictionsMemoryContext = ((void*)0);
 MemoryContext oldMemoryContext = ((void*)0);
 List *restrictInfoList = NIL;





 plannerRestrictionContext = CurrentPlannerRestrictionContext();
 restrictionsMemoryContext = plannerRestrictionContext->memoryContext;
 oldMemoryContext = MemoryContextSwitchTo(restrictionsMemoryContext);






 restrictInfoList = copyObject(extra->restrictlist);

 joinRestrictionContext = plannerRestrictionContext->joinRestrictionContext;
 Assert(joinRestrictionContext != ((void*)0));

 joinRestriction = palloc0(sizeof(JoinRestriction));
 joinRestriction->joinType = jointype;
 joinRestriction->joinRestrictInfoList = restrictInfoList;
 joinRestriction->plannerInfo = root;
 joinRestriction->innerrel = innerrel;
 joinRestriction->outerrel = outerrel;

 joinRestrictionContext->joinRestrictionList =
  lappend(joinRestrictionContext->joinRestrictionList, joinRestriction);






 plannerRestrictionContext->hasSemiJoin = plannerRestrictionContext->hasSemiJoin ||
            extra->sjinfo->jointype == JOIN_SEMI;

 MemoryContextSwitchTo(oldMemoryContext);
}
