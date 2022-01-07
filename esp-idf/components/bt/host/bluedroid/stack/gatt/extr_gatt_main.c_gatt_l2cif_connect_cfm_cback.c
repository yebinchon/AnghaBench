
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int mtu; int mtu_present; } ;
typedef TYPE_1__ tL2CAP_CFG_INFO ;
struct TYPE_10__ {int peer_bda; int att_lcid; } ;
typedef TYPE_2__ tGATT_TCB ;
typedef int UINT16 ;
struct TYPE_11__ {int local_mtu; } ;


 int GATT_CH_CFG ;
 scalar_t__ GATT_CH_CONN ;
 int GATT_TRACE_DEBUG (char*,int ,scalar_t__,int ) ;
 int GATT_TRANSPORT_BR_EDR ;
 int L2CAP_CONN_OK ;
 int L2CA_ConfigReq (int ,TYPE_1__*) ;
 int L2CA_DisconnectReq (int ) ;
 int TRUE ;
 int gatt_cleanup_upon_disc (int ,int ,int ) ;
 TYPE_7__ gatt_default ;
 TYPE_2__* gatt_find_tcb_by_cid (int ) ;
 scalar_t__ gatt_get_ch_state (TYPE_2__*) ;
 int gatt_set_ch_state (TYPE_2__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void gatt_l2cif_connect_cfm_cback(UINT16 lcid, UINT16 result)
{
    tGATT_TCB *p_tcb;
    tL2CAP_CFG_INFO cfg;


    if ((p_tcb = gatt_find_tcb_by_cid(lcid)) != ((void*)0)) {
        GATT_TRACE_DEBUG("gatt_l2c_connect_cfm_cback result: %d ch_state: %d, lcid:0x%x", result, gatt_get_ch_state(p_tcb), p_tcb->att_lcid);


        if (gatt_get_ch_state(p_tcb) == GATT_CH_CONN) {

            if (result == L2CAP_CONN_OK) {

                gatt_set_ch_state(p_tcb, GATT_CH_CFG);


                memset(&cfg, 0, sizeof(tL2CAP_CFG_INFO));
                cfg.mtu_present = TRUE;
                cfg.mtu = gatt_default.local_mtu;
                L2CA_ConfigReq(lcid, &cfg);
            }

            else {
                gatt_cleanup_upon_disc(p_tcb->peer_bda, result, GATT_TRANSPORT_BR_EDR);
            }
        } else {
            if (result == L2CAP_CONN_OK) {

                L2CA_DisconnectReq(lcid);
            }
        }
    }
}
