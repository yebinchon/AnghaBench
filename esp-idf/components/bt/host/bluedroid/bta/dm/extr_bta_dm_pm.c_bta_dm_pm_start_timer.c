
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* srvc_id; size_t* pm_action; TYPE_2__* timer; int active; int in_use; } ;
typedef TYPE_1__ tBTA_PM_TIMER ;
typedef size_t UINT8 ;
struct TYPE_5__ {int p_cback; } ;
typedef int INT32 ;


 scalar_t__ BTA_ID_MAX ;
 int TRUE ;
 int bta_dm_pm_timer_cback ;
 int bta_sys_start_timer (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void bta_dm_pm_start_timer(tBTA_PM_TIMER *p_timer, UINT8 timer_idx,
                                  INT32 timeout, UINT8 srvc_id, UINT8 pm_action)
{
    p_timer->in_use = TRUE;
    p_timer->timer[timer_idx].p_cback = bta_dm_pm_timer_cback;

    if (p_timer->srvc_id[timer_idx] == BTA_ID_MAX) {
        p_timer->active++;
    }

    if (p_timer->pm_action[timer_idx] < pm_action) {
        p_timer->pm_action[timer_idx] = pm_action;
    }

    p_timer->srvc_id[timer_idx] = srvc_id;

    bta_sys_start_timer(&p_timer->timer[timer_idx], 0, timeout);
}
