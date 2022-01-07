
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int list_delete_first (int ) ;
 int plannerRestrictionContextList ;

__attribute__((used)) static void
PopPlannerRestrictionContext(void)
{
 plannerRestrictionContextList = list_delete_first(plannerRestrictionContextList);
}
