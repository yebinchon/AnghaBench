
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* relationRestrictionContext; int memoryContext; void* joinRestrictionContext; } ;
struct TYPE_5__ {int allReferenceTables; } ;
typedef int RelationRestrictionContext ;
typedef TYPE_2__ PlannerRestrictionContext ;
typedef int JoinRestrictionContext ;


 int CurrentMemoryContext ;
 int lcons (TYPE_2__*,int ) ;
 void* palloc0 (int) ;
 int plannerRestrictionContextList ;

__attribute__((used)) static PlannerRestrictionContext *
CreateAndPushPlannerRestrictionContext(void)
{
 PlannerRestrictionContext *plannerRestrictionContext =
  palloc0(sizeof(PlannerRestrictionContext));

 plannerRestrictionContext->relationRestrictionContext =
  palloc0(sizeof(RelationRestrictionContext));

 plannerRestrictionContext->joinRestrictionContext =
  palloc0(sizeof(JoinRestrictionContext));

 plannerRestrictionContext->memoryContext = CurrentMemoryContext;


 plannerRestrictionContext->relationRestrictionContext->allReferenceTables = 1;

 plannerRestrictionContextList = lcons(plannerRestrictionContext,
            plannerRestrictionContextList);

 return plannerRestrictionContext;
}
