
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_4__ {TYPE_1__* pm_timer; } ;
struct TYPE_3__ {scalar_t__* srvc_id; int * pm_action; int peer_bdaddr; scalar_t__ in_use; } ;
typedef int BD_ADDR ;


 int BTA_DM_NUM_PM_TIMER ;
 int BTA_DM_PM_MODE_TIMER_MAX ;
 int BTA_DM_PM_NO_ACTION ;
 int bdcmp (int ,int ) ;
 TYPE_2__ bta_dm_cb ;
 int bta_dm_pm_stop_timer_by_index (TYPE_1__*,int) ;

__attribute__((used)) static void bta_dm_pm_stop_timer_by_srvc_id(BD_ADDR peer_addr, UINT8 srvc_id)
{
    for (int i = 0; i < BTA_DM_NUM_PM_TIMER; i++) {
        if (bta_dm_cb.pm_timer[i].in_use && !bdcmp(bta_dm_cb.pm_timer[i].peer_bdaddr, peer_addr)) {
            for (int j = 0; j < BTA_DM_PM_MODE_TIMER_MAX; j++) {
                if (bta_dm_cb.pm_timer[i].srvc_id[j] == srvc_id) {
                    bta_dm_pm_stop_timer_by_index(&bta_dm_cb.pm_timer[i], j);
                    bta_dm_cb.pm_timer[i].pm_action[j] = BTA_DM_PM_NO_ACTION;
                    break;
                }
            }
        }
    }
}
