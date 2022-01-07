
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int chnl_state; } ;
typedef TYPE_1__ tL2C_CCB ;
typedef int UINT16 ;
 int L2CAP_TRACE_DEBUG (char*,int ) ;
 int l2c_csm_closed (TYPE_1__*,int ,void*) ;
 int l2c_csm_config (TYPE_1__*,int ,void*) ;
 int l2c_csm_open (TYPE_1__*,int ,void*) ;
 int l2c_csm_orig_w4_sec_comp (TYPE_1__*,int ,void*) ;
 int l2c_csm_term_w4_sec_comp (TYPE_1__*,int ,void*) ;
 int l2c_csm_w4_l2ca_connect_rsp (TYPE_1__*,int ,void*) ;
 int l2c_csm_w4_l2ca_disconnect_rsp (TYPE_1__*,int ,void*) ;
 int l2c_csm_w4_l2cap_connect_rsp (TYPE_1__*,int ,void*) ;
 int l2c_csm_w4_l2cap_disconnect_rsp (TYPE_1__*,int ,void*) ;

void l2c_csm_execute (tL2C_CCB *p_ccb, UINT16 event, void *p_data)
{
    switch (p_ccb->chnl_state) {
    case 136:
        l2c_csm_closed (p_ccb, event, p_data);
        break;

    case 133:
        l2c_csm_orig_w4_sec_comp (p_ccb, event, p_data);
        break;

    case 132:
        l2c_csm_term_w4_sec_comp (p_ccb, event, p_data);
        break;

    case 131:
        l2c_csm_w4_l2cap_connect_rsp (p_ccb, event, p_data);
        break;

    case 129:
        l2c_csm_w4_l2ca_connect_rsp (p_ccb, event, p_data);
        break;

    case 135:
        l2c_csm_config (p_ccb, event, p_data);
        break;

    case 134:
        l2c_csm_open (p_ccb, event, p_data);
        break;

    case 130:
        l2c_csm_w4_l2cap_disconnect_rsp (p_ccb, event, p_data);
        break;

    case 128:
        l2c_csm_w4_l2ca_disconnect_rsp (p_ccb, event, p_data);
        break;

    default:
        L2CAP_TRACE_DEBUG("Unhandled event! event = %d", event);
        break;
    }
}
