
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_9__ {int * p_cback; } ;
struct TYPE_7__ {int count; int le_count; TYPE_1__* peer_device; } ;
struct TYPE_10__ {TYPE_4__ switch_delay_timer; TYPE_2__ device_list; scalar_t__ cur_av_count; } ;
struct TYPE_8__ {scalar_t__ cfg; } ;
struct TYPE_6__ {scalar_t__ conn_state; scalar_t__ transport; scalar_t__ pref_role; int peer_bdaddr; } ;
typedef int TIMER_CBACK ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BTA_ANY_ROLE ;
 scalar_t__ BTA_DM_CONNECTED ;
 scalar_t__ BTA_DM_NO_SCATTERNET ;
 scalar_t__ BTA_DM_PARTIAL_SCATTERNET ;
 scalar_t__ BTA_MASTER_ROLE_ONLY ;
 scalar_t__ BTA_SLAVE_ROLE_ONLY ;
 int BTM_SwitchRole (int ,int ,int *) ;
 scalar_t__ BT_TRANSPORT_BR_EDR ;
 scalar_t__ FALSE ;
 int HCI_ROLE_MASTER ;
 int L2CAP_DESIRED_LINK_ROLE ;
 int L2CA_SetDesireRole (int ) ;
 scalar_t__ TRUE ;
 TYPE_5__ bta_dm_cb ;
 int bta_dm_delay_role_switch_cback ;
 int bta_sys_start_timer (TYPE_4__*,int ,int) ;
 TYPE_3__* p_bta_dm_rm_cfg ;

__attribute__((used)) static void bta_dm_adjust_roles(BOOLEAN delay_role_switch)
{

    UINT8 i;
    BOOLEAN set_master_role = FALSE;

    UINT8 br_count = bta_dm_cb.device_list.count - bta_dm_cb.device_list.le_count;



    if (br_count) {



        if ( (p_bta_dm_rm_cfg[0].cfg == BTA_DM_NO_SCATTERNET) ||
                (bta_dm_cb.cur_av_count && br_count > 1) ) {

            L2CA_SetDesireRole (HCI_ROLE_MASTER);
            set_master_role = TRUE;

        }

        for (i = 0; i < bta_dm_cb.device_list.count; i++) {
            if (bta_dm_cb.device_list.peer_device[i].conn_state == BTA_DM_CONNECTED

                    && bta_dm_cb.device_list.peer_device[i].transport == BT_TRANSPORT_BR_EDR

               ) {
                if (!set_master_role && (bta_dm_cb.device_list.peer_device[i].pref_role != BTA_ANY_ROLE)
                        && (p_bta_dm_rm_cfg[0].cfg == BTA_DM_PARTIAL_SCATTERNET)) {
                    L2CA_SetDesireRole (HCI_ROLE_MASTER);
                    set_master_role = TRUE;
                }

                if ((bta_dm_cb.device_list.peer_device[i].pref_role == BTA_MASTER_ROLE_ONLY)
                        || (br_count > 1)) {







                    if (bta_dm_cb.device_list.peer_device[i].pref_role != BTA_SLAVE_ROLE_ONLY &&
                            delay_role_switch == FALSE) {
                        BTM_SwitchRole (bta_dm_cb.device_list.peer_device[i].peer_bdaddr,
                                        HCI_ROLE_MASTER, ((void*)0));
                    } else {
                        bta_dm_cb.switch_delay_timer.p_cback =
                            (TIMER_CBACK *)&bta_dm_delay_role_switch_cback;
                        bta_sys_start_timer(&bta_dm_cb.switch_delay_timer, 0, 500);
                    }
                }

            }
        }


        if (!set_master_role) {

            L2CA_SetDesireRole (L2CAP_DESIRED_LINK_ROLE);

        }

    } else {
        L2CA_SetDesireRole (L2CAP_DESIRED_LINK_ROLE);
    }


}
