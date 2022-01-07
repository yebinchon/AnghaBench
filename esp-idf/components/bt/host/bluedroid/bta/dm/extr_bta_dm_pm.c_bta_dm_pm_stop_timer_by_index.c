
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* srvc_id; scalar_t__ active; scalar_t__ in_use; int * timer; } ;
typedef TYPE_1__ tBTA_PM_TIMER ;
typedef size_t UINT8 ;


 size_t BTA_DM_PM_MODE_TIMER_MAX ;
 scalar_t__ BTA_ID_MAX ;
 scalar_t__ FALSE ;
 int assert (int) ;
 int bta_sys_stop_timer (int *) ;

__attribute__((used)) static void bta_dm_pm_stop_timer_by_index(tBTA_PM_TIMER *p_timer,
        UINT8 timer_idx)
{
    if ((p_timer == ((void*)0)) || (timer_idx >= BTA_DM_PM_MODE_TIMER_MAX)) {
        return;
    }

    if (p_timer->srvc_id[timer_idx] == BTA_ID_MAX) {
        return;
    }

    assert(p_timer->in_use && (p_timer->active > 0));

    bta_sys_stop_timer(&p_timer->timer[timer_idx]);
    p_timer->srvc_id[timer_idx] = BTA_ID_MAX;


    p_timer->active--;
    if (p_timer->active == 0) {
        p_timer->in_use = FALSE;
    }
}
