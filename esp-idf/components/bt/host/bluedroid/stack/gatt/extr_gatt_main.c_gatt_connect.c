
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int att_lcid; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef scalar_t__ tBT_TRANSPORT ;
typedef int tBLE_ADDR_TYPE ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BT_PSM_ATT ;
 scalar_t__ BT_TRANSPORT_LE ;
 int FALSE ;
 int GATT_CH_CONN ;
 scalar_t__ GATT_CH_OPEN ;
 int L2CAP_ATT_CID ;
 int L2CA_ConnectFixedChnl (int ,int ,int ) ;
 int L2CA_ConnectReq (int ,int ) ;
 int TRUE ;
 scalar_t__ gatt_get_ch_state (TYPE_1__*) ;
 int gatt_set_ch_state (TYPE_1__*,int ) ;

BOOLEAN gatt_connect (BD_ADDR rem_bda, tBLE_ADDR_TYPE bd_addr_type, tGATT_TCB *p_tcb, tBT_TRANSPORT transport)
{
    BOOLEAN gatt_ret = FALSE;

    if (gatt_get_ch_state(p_tcb) != GATT_CH_OPEN) {
        gatt_set_ch_state(p_tcb, GATT_CH_CONN);
    }

    if (transport == BT_TRANSPORT_LE) {
        p_tcb->att_lcid = L2CAP_ATT_CID;
        gatt_ret = L2CA_ConnectFixedChnl (L2CAP_ATT_CID, rem_bda, bd_addr_type);

    } else {
        if ((p_tcb->att_lcid = L2CA_ConnectReq(BT_PSM_ATT, rem_bda)) != 0) {
            gatt_ret = TRUE;
        }


    }

    return gatt_ret;
}
