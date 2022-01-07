
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tBT_TRANSPORT ;
typedef size_t UINT8 ;
struct TYPE_11__ {int param; int * p_cback; } ;
struct TYPE_9__ {size_t count; TYPE_1__* peer_device; } ;
struct TYPE_12__ {int (* p_sec_cback ) (int ,int *) ;void* disabling; TYPE_4__ disable_timer; TYPE_2__ device_list; } ;
struct TYPE_10__ {scalar_t__ param; } ;
struct TYPE_8__ {int peer_bdaddr; int transport; } ;
typedef TYPE_3__ TIMER_LIST_ENT ;
typedef int TIMER_CBACK ;
typedef void* BOOLEAN ;


 int APPL_TRACE_EVENT (char*,scalar_t__) ;
 int BTA_DM_DISABLE_EVT ;
 scalar_t__ BTM_GetNumAclLinks () ;
 int BT_TRANSPORT_BR_EDR ;
 void* FALSE ;
 void* TRUE ;
 int UNUSED (TYPE_3__*) ;
 int UUID_SERVCLASS_PNP_INFORMATION ;
 TYPE_6__ bta_dm_cb ;
 int bta_sys_remove_uuid (int ) ;
 int bta_sys_start_timer (TYPE_4__*,int ,int) ;
 int btm_remove_acl (int ,int ) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void bta_dm_disable_timer_cback (TIMER_LIST_ENT *p_tle)
{
    UNUSED(p_tle);
    UINT8 i;
    tBT_TRANSPORT transport = BT_TRANSPORT_BR_EDR;
    BOOLEAN trigger_disc = FALSE;


    APPL_TRACE_EVENT(" bta_dm_disable_timer_cback trial %d ", p_tle->param);

    if (BTM_GetNumAclLinks() && p_tle->param == 0) {
        for (i = 0; i < bta_dm_cb.device_list.count; i++) {

            transport = bta_dm_cb.device_list.peer_device[i].transport;

            btm_remove_acl(bta_dm_cb.device_list.peer_device[i].peer_bdaddr, transport);
            trigger_disc = TRUE;
        }



        if (trigger_disc) {
            bta_dm_cb.disable_timer.p_cback = (TIMER_CBACK *)&bta_dm_disable_timer_cback;
            bta_dm_cb.disable_timer.param = 1;
            bta_sys_start_timer(&bta_dm_cb.disable_timer, 0, 1500);
        }
    } else {
        bta_dm_cb.disabling = FALSE;

        bta_sys_remove_uuid(UUID_SERVCLASS_PNP_INFORMATION);
        bta_dm_cb.p_sec_cback(BTA_DM_DISABLE_EVT, ((void*)0));
    }
}
