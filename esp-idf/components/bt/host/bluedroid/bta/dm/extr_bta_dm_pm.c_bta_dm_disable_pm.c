
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_SYS_CONN_CBACK ;
struct TYPE_4__ {TYPE_1__* pm_timer; int pm_id; } ;
struct TYPE_3__ {int * pm_action; } ;


 int BTA_DM_NUM_PM_TIMER ;
 int BTA_DM_PM_MODE_TIMER_MAX ;
 int BTA_DM_PM_NO_ACTION ;
 int BTM_PM_DEREG ;
 int BTM_PmRegister (int ,int *,int *) ;
 TYPE_2__ bta_dm_cb ;
 int bta_dm_pm_stop_timer_by_index (TYPE_1__*,int) ;
 int bta_sys_pm_register (int *) ;

void bta_dm_disable_pm(void)
{
    BTM_PmRegister( BTM_PM_DEREG, &bta_dm_cb.pm_id, ((void*)0));





    bta_sys_pm_register((tBTA_SYS_CONN_CBACK *)((void*)0));


    for (int i = 0; i < BTA_DM_NUM_PM_TIMER; i++) {
        for (int j = 0; j < BTA_DM_PM_MODE_TIMER_MAX; j++) {
            bta_dm_pm_stop_timer_by_index(&bta_dm_cb.pm_timer[i], j);
            bta_dm_cb.pm_timer[i].pm_action[j] = BTA_DM_PM_NO_ACTION;
        }
    }
}
