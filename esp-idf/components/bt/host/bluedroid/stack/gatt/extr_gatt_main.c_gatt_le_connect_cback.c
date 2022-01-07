
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* payload_size; int att_lcid; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int tGATTS_SRV_CHG ;
typedef scalar_t__ tBT_TRANSPORT ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;
typedef int* BD_ADDR ;


 scalar_t__ BT_TRANSPORT_BR_EDR ;
 int BT_TRANSPORT_LE ;
 scalar_t__ FALSE ;
 scalar_t__ GATT_CH_CONN ;
 int GATT_CH_OPEN ;
 void* GATT_DEF_BLE_MTU_SIZE ;
 int GATT_TRACE_DEBUG (char*,...) ;
 int GATT_TRACE_ERROR (char*) ;
 int L2CAP_ATT_CID ;
 scalar_t__ TRUE ;
 scalar_t__ btm_sec_is_a_bonded_dev (int*) ;
 int gatt_add_a_bonded_dev_for_srv_chg (int*) ;
 TYPE_1__* gatt_allocate_tcb_by_bdaddr (int*,int ) ;
 int gatt_chk_srv_chg (int *) ;
 int gatt_cleanup_upon_disc (int*,int ,scalar_t__) ;
 TYPE_1__* gatt_find_tcb_by_addr (int*,scalar_t__) ;
 scalar_t__ gatt_get_ch_state (TYPE_1__*) ;
 int * gatt_is_bda_in_the_srv_chg_clt_list (int*) ;
 int gatt_send_conn_cback (TYPE_1__*) ;
 int gatt_set_ch_state (TYPE_1__*,int ) ;

__attribute__((used)) static void gatt_le_connect_cback (UINT16 chan, BD_ADDR bd_addr, BOOLEAN connected,
                                   UINT16 reason, tBT_TRANSPORT transport)
{

    tGATT_TCB *p_tcb = gatt_find_tcb_by_addr(bd_addr, transport);
    BOOLEAN check_srv_chg = FALSE;
    tGATTS_SRV_CHG *p_srv_chg_clt = ((void*)0);


    if (transport == BT_TRANSPORT_BR_EDR) {
        return;
    }

    GATT_TRACE_DEBUG ("GATT   ATT protocol channel with BDA: %08x%04x is %s",
                      (bd_addr[0] << 24) + (bd_addr[1] << 16) + (bd_addr[2] << 8) + bd_addr[3],
                      (bd_addr[4] << 8) + bd_addr[5], (connected) ? "connected" : "disconnected");

    if ((p_srv_chg_clt = gatt_is_bda_in_the_srv_chg_clt_list(bd_addr)) != ((void*)0)) {
        check_srv_chg = TRUE;
    } else {
        if (btm_sec_is_a_bonded_dev(bd_addr)) {
            gatt_add_a_bonded_dev_for_srv_chg(bd_addr);
        }
    }

    if (connected) {

        if (p_tcb) {

            if ( gatt_get_ch_state(p_tcb) == GATT_CH_CONN) {

                gatt_set_ch_state(p_tcb, GATT_CH_OPEN);
                p_tcb->payload_size = GATT_DEF_BLE_MTU_SIZE;

                gatt_send_conn_cback(p_tcb);
            }
            if (check_srv_chg) {

                gatt_chk_srv_chg (p_srv_chg_clt);

            }
        }


        else {
            if ((p_tcb = gatt_allocate_tcb_by_bdaddr(bd_addr, BT_TRANSPORT_LE)) != ((void*)0)) {
                p_tcb->att_lcid = L2CAP_ATT_CID;

                gatt_set_ch_state(p_tcb, GATT_CH_OPEN);

                p_tcb->payload_size = GATT_DEF_BLE_MTU_SIZE;

                gatt_send_conn_cback (p_tcb);
                if (check_srv_chg) {

                    gatt_chk_srv_chg (p_srv_chg_clt);

                }
            } else {
                GATT_TRACE_ERROR("CCB max out, no rsources");
            }
        }
    } else {
        gatt_cleanup_upon_disc(bd_addr, reason, transport);
        GATT_TRACE_DEBUG ("ATT disconnected");
    }
}
