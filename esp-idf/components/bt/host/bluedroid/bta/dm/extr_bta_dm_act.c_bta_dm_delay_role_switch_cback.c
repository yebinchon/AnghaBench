
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIMER_LIST_ENT ;


 int APPL_TRACE_EVENT (char*) ;
 int FALSE ;
 int UNUSED (int *) ;
 int bta_dm_adjust_roles (int ) ;

__attribute__((used)) static void bta_dm_delay_role_switch_cback(TIMER_LIST_ENT *p_tle)
{
    UNUSED(p_tle);
    APPL_TRACE_EVENT("bta_dm_delay_role_switch_cback: initiating Delayed RS");
    bta_dm_adjust_roles (FALSE);
}
