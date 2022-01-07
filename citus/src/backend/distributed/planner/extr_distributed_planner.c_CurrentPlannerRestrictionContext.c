
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlannerRestrictionContext ;


 int Assert (int) ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 scalar_t__ NIL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*) ;
 scalar_t__ linitial (scalar_t__) ;
 scalar_t__ plannerRestrictionContextList ;

__attribute__((used)) static PlannerRestrictionContext *
CurrentPlannerRestrictionContext(void)
{
 PlannerRestrictionContext *plannerRestrictionContext = ((void*)0);

 Assert(plannerRestrictionContextList != NIL);

 plannerRestrictionContext =
  (PlannerRestrictionContext *) linitial(plannerRestrictionContextList);

 if (plannerRestrictionContext == ((void*)0))
 {
  ereport(ERROR, (errcode(ERRCODE_INTERNAL_ERROR),
      errmsg("planner restriction context stack was empty"),
      errdetail("Please report this to the Citus core team.")));
 }

 return plannerRestrictionContext;
}
