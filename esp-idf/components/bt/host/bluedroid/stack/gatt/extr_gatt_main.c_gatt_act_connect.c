
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int pending_ind_q; int pending_enc_clcb; } ;
typedef TYPE_1__ tGATT_TCB ;
struct TYPE_12__ {int gatt_if; } ;
typedef TYPE_2__ tGATT_REG ;
typedef int tBT_TRANSPORT ;
typedef int tBLE_ADDR_TYPE ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BT_TRANSPORT_LE ;
 scalar_t__ FALSE ;
 scalar_t__ GATT_CH_CLOSING ;
 scalar_t__ GATT_CH_OPEN ;
 int GATT_TRACE_ERROR (char*,...) ;
 scalar_t__ TRUE ;
 int fixed_queue_free (int ,int *) ;
 TYPE_1__* gatt_allocate_tcb_by_bdaddr (int ,int ) ;
 int gatt_connect (int ,int ,TYPE_1__*,int ) ;
 TYPE_1__* gatt_find_tcb_by_addr (int ,int ) ;
 scalar_t__ gatt_get_ch_state (TYPE_1__*) ;
 scalar_t__ gatt_num_apps_hold_link (TYPE_1__*) ;
 int gatt_update_app_use_link_flag (int ,TYPE_1__*,scalar_t__,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

BOOLEAN gatt_act_connect (tGATT_REG *p_reg, BD_ADDR bd_addr, tBLE_ADDR_TYPE bd_addr_type, tBT_TRANSPORT transport)
{
    BOOLEAN ret = FALSE;
    tGATT_TCB *p_tcb;
    UINT8 st;

    if ((p_tcb = gatt_find_tcb_by_addr(bd_addr, transport)) != ((void*)0)) {
        ret = TRUE;
        st = gatt_get_ch_state(p_tcb);


        if (st == GATT_CH_OPEN && gatt_num_apps_hold_link(p_tcb) == 0 &&
                transport == BT_TRANSPORT_LE ) {
            if (!gatt_connect(bd_addr, bd_addr_type, p_tcb, transport)) {
                ret = FALSE;
            }
        } else if (st == GATT_CH_CLOSING) {

            ret = FALSE;
        }
    } else {
        if ((p_tcb = gatt_allocate_tcb_by_bdaddr(bd_addr, transport)) != ((void*)0)) {
            if (!gatt_connect(bd_addr, bd_addr_type, p_tcb, transport)) {
                GATT_TRACE_ERROR("gatt_connect failed");
                fixed_queue_free(p_tcb->pending_enc_clcb, ((void*)0));
                fixed_queue_free(p_tcb->pending_ind_q, ((void*)0));
                memset(p_tcb, 0, sizeof(tGATT_TCB));
            } else {
                ret = TRUE;
            }
        } else {
            ret = 0;
            GATT_TRACE_ERROR("Max TCB for gatt_if [%d] reached.", p_reg->gatt_if);
        }
    }

    if (ret) {
        gatt_update_app_use_link_flag(p_reg->gatt_if, p_tcb, TRUE, FALSE);
    }

    return ret;
}
