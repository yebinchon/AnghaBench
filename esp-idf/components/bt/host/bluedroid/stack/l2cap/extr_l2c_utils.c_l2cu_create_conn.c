
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ open_addr_type; scalar_t__ link_role; int link_state; int timer_entry; int remote_bd_addr; scalar_t__ in_use; scalar_t__ transport; scalar_t__ ble_addr_type; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef scalar_t__ tBT_TRANSPORT ;
typedef int tBT_DEVICE_TYPE ;
typedef scalar_t__ tBLE_ADDR_TYPE ;
struct TYPE_9__ {int (* supports_ble ) () ;} ;
struct TYPE_8__ {TYPE_1__* lcb_pool; } ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BLE_ADDR_PUBLIC ;
 scalar_t__ BLE_ADDR_TYPE_MAX ;
 scalar_t__ BLE_ADDR_UNKNOWN_TYPE ;
 scalar_t__ BTM_CMD_STARTED ;
 int BTM_ReadDevInfo (int ,int *,scalar_t__*) ;
 int BTM_ReadLocalFeatures () ;
 scalar_t__ BTM_SwitchRole (int ,scalar_t__,int *) ;
 int BTU_TTYPE_L2CAP_LINK ;
 scalar_t__ BT_TRANSPORT_LE ;
 scalar_t__ FALSE ;
 scalar_t__ HCI_ROLE_MASTER ;
 scalar_t__ HCI_ROLE_SLAVE ;
 scalar_t__ HCI_SWITCH_SUPPORTED (int ) ;
 int L2CAP_LINK_ROLE_SWITCH_TOUT ;
 int L2CAP_TRACE_API (char*,char*) ;
 int LST_CONNECTING ;
 int LST_CONNECTING_WAIT_SWITCH ;
 int MAX_L2CAP_LINKS ;
 scalar_t__ TRUE ;
 scalar_t__ btm_is_sco_active_by_bdaddr (int ) ;
 int btu_start_timer (int *,int ,int ) ;
 TYPE_6__* controller_get_interface () ;
 TYPE_5__ l2cb ;
 scalar_t__ l2cble_create_conn (TYPE_1__*) ;
 scalar_t__ l2cu_create_conn_after_switch (TYPE_1__*) ;
 int stub1 () ;

BOOLEAN l2cu_create_conn (tL2C_LCB *p_lcb, tBT_TRANSPORT transport)
{
    int xx;
    tL2C_LCB *p_lcb_cur = &l2cb.lcb_pool[0];

    BOOLEAN is_sco_active;



    tBT_DEVICE_TYPE dev_type;
    tBLE_ADDR_TYPE addr_type = p_lcb->open_addr_type;
    if(addr_type == BLE_ADDR_UNKNOWN_TYPE) {
        BTM_ReadDevInfo(p_lcb->remote_bd_addr, &dev_type, &addr_type);
    }

    if (transport == BT_TRANSPORT_LE) {
        if (!controller_get_interface()->supports_ble()) {
            return FALSE;
        }
        if(addr_type > BLE_ADDR_TYPE_MAX) {
            addr_type = BLE_ADDR_PUBLIC;
        }
        p_lcb->ble_addr_type = addr_type;
        p_lcb->transport = BT_TRANSPORT_LE;

        return (l2cble_create_conn(p_lcb));
    }




    for (xx = 0, p_lcb_cur = &l2cb.lcb_pool[0]; xx < MAX_L2CAP_LINKS; xx++, p_lcb_cur++) {
        if (p_lcb_cur == p_lcb) {
            continue;
        }

        if ((p_lcb_cur->in_use) && (p_lcb_cur->link_role == HCI_ROLE_SLAVE)) {







            is_sco_active = btm_is_sco_active_by_bdaddr(p_lcb_cur->remote_bd_addr);

            L2CAP_TRACE_API ("l2cu_create_conn - btm_is_sco_active_by_bdaddr() is_sco_active = %s", (is_sco_active == TRUE) ? "TRUE" : "FALSE");


            if (is_sco_active == TRUE) {
                continue;
            }


            if (HCI_SWITCH_SUPPORTED(BTM_ReadLocalFeatures())) {


                p_lcb->link_state = LST_CONNECTING_WAIT_SWITCH;
                p_lcb->link_role = HCI_ROLE_MASTER;

                if (BTM_SwitchRole (p_lcb_cur->remote_bd_addr, HCI_ROLE_MASTER, ((void*)0)) == BTM_CMD_STARTED) {
                    btu_start_timer (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_LINK_ROLE_SWITCH_TOUT);
                    return (TRUE);
                }
            }
        }
    }

    p_lcb->link_state = LST_CONNECTING;

    return (l2cu_create_conn_after_switch (p_lcb));
}
