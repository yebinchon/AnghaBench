
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* relationRestrictionContext; void* joinRestrictionContext; } ;
struct TYPE_4__ {int allReferenceTables; } ;
typedef int RelationRestrictionContext ;
typedef TYPE_2__ PlannerRestrictionContext ;
typedef int JoinRestrictionContext ;


 void* palloc0 (int) ;

__attribute__((used)) static void
ResetPlannerRestrictionContext(PlannerRestrictionContext *plannerRestrictionContext)
{
 plannerRestrictionContext->relationRestrictionContext =
  palloc0(sizeof(RelationRestrictionContext));

 plannerRestrictionContext->joinRestrictionContext =
  palloc0(sizeof(JoinRestrictionContext));


 plannerRestrictionContext->relationRestrictionContext->allReferenceTables = 1;
}
