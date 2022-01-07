
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int period_ms_t ;
typedef int UINT32 ;
typedef int TIMER_LIST_ENT ;


 int OSI_MUTEX_MAX_TIMEOUT ;
 int bta_alarm_hash_map ;
 int bta_alarm_lock ;
 int hash_iter_ro_cb ;
 int hash_map_foreach (int ,int ,int *) ;
 int osi_mutex_lock (int *,int ) ;
 int osi_mutex_unlock (int *) ;

UINT32 bta_sys_get_remaining_ticks(TIMER_LIST_ENT *p_target_tle)
{
    period_ms_t remaining_ms = 0;
    osi_mutex_lock(&bta_alarm_lock, OSI_MUTEX_MAX_TIMEOUT);

    hash_map_foreach(bta_alarm_hash_map, hash_iter_ro_cb, &remaining_ms);
    osi_mutex_unlock(&bta_alarm_lock);
    return remaining_ms;
}
