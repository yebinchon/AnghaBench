
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int mtu; int mtu_present; } ;
typedef TYPE_1__ tL2CAP_CFG_INFO ;
struct TYPE_10__ {int att_lcid; } ;
typedef TYPE_2__ tGATT_TCB ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_11__ {int local_mtu; } ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_BR_EDR ;
 int GATT_CH_CFG ;
 int GATT_TRACE_ERROR (char*,int ) ;
 scalar_t__ L2CAP_CONN_NO_RESOURCES ;
 scalar_t__ L2CAP_CONN_OK ;
 int L2CA_ConfigReq (int ,TYPE_1__*) ;
 int L2CA_ConnectRsp (int ,scalar_t__,int ,scalar_t__,int ) ;
 int TRUE ;
 int UNUSED (int ) ;
 TYPE_2__* gatt_allocate_tcb_by_bdaddr (int ,int ) ;
 TYPE_6__ gatt_default ;
 TYPE_2__* gatt_find_tcb_by_addr (int ,int ) ;
 int gatt_set_ch_state (TYPE_2__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void gatt_l2cif_connect_ind_cback (BD_ADDR bd_addr, UINT16 lcid, UINT16 psm, UINT8 id)
{

    UINT8 result = L2CAP_CONN_OK;
    tL2CAP_CFG_INFO cfg;
    tGATT_TCB *p_tcb = gatt_find_tcb_by_addr(bd_addr, BT_TRANSPORT_BR_EDR);
    UNUSED(psm);

    GATT_TRACE_ERROR("Connection indication cid = %d", lcid);

    if (p_tcb == ((void*)0)) {

        if ((p_tcb = gatt_allocate_tcb_by_bdaddr(bd_addr, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {

            result = L2CAP_CONN_NO_RESOURCES;
        } else {
            p_tcb->att_lcid = lcid;
        }

    } else {
        result = L2CAP_CONN_NO_RESOURCES;
    }


    L2CA_ConnectRsp(bd_addr, id, lcid, result, 0);


    if (result == L2CAP_CONN_OK) {

        gatt_set_ch_state(p_tcb, GATT_CH_CFG);


        memset(&cfg, 0, sizeof(tL2CAP_CFG_INFO));
        cfg.mtu_present = TRUE;
        cfg.mtu = gatt_default.local_mtu;

        L2CA_ConfigReq(lcid, &cfg);
    }

}
