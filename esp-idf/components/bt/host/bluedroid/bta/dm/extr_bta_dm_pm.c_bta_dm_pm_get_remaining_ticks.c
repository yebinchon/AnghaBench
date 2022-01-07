
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int TIMER_LIST_ENT ;


 int bta_sys_get_remaining_ticks (int *) ;

UINT32 bta_dm_pm_get_remaining_ticks (TIMER_LIST_ENT *p_target_tle)
{
    return bta_sys_get_remaining_ticks(p_target_tle);
}
