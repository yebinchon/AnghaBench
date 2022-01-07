
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_4__ {TYPE_1__* pm_timer; } ;
struct TYPE_3__ {scalar_t__* srvc_id; scalar_t__* pm_action; int peer_bdaddr; scalar_t__ in_use; } ;
typedef int BD_ADDR ;


 int BTA_DM_NUM_PM_TIMER ;
 scalar_t__ const BTA_DM_PM_MODE_TIMER_MAX ;
 scalar_t__ BTA_ID_MAX ;
 int bdcmp (int ,int ) ;
 TYPE_2__ bta_dm_cb ;
 int bta_dm_pm_stop_timer_by_index (TYPE_1__*,scalar_t__ const) ;
 scalar_t__ bta_pm_action_to_timer_idx (scalar_t__) ;

__attribute__((used)) static void bta_dm_pm_stop_timer_by_mode(BD_ADDR peer_addr, UINT8 power_mode)
{
    const UINT8 timer_idx = bta_pm_action_to_timer_idx(power_mode);
    if (timer_idx == BTA_DM_PM_MODE_TIMER_MAX) {
        return;
    }

    for (int i = 0; i < BTA_DM_NUM_PM_TIMER; i++) {
        if (bta_dm_cb.pm_timer[i].in_use && !bdcmp(bta_dm_cb.pm_timer[i].peer_bdaddr, peer_addr)) {
            if (bta_dm_cb.pm_timer[i].srvc_id[timer_idx] != BTA_ID_MAX) {
                bta_dm_pm_stop_timer_by_index(&bta_dm_cb.pm_timer[i], timer_idx);






                bta_dm_cb.pm_timer[i].pm_action[timer_idx] = power_mode;
            }
            break;
        }
    }
}
