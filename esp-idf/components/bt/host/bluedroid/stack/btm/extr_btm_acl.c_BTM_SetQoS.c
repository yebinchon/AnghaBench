
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_CMPL_CB ;
struct TYPE_8__ {int hci_handle; } ;
typedef TYPE_2__ tACL_CONN ;
struct TYPE_7__ {int qossu_timer; int * p_qossu_cmpl_cb; } ;
struct TYPE_10__ {TYPE_1__ devcb; TYPE_2__* acl_db; } ;
struct TYPE_9__ {int delay_variation; int latency; int peak_bandwidth; int token_rate; int service_type; int qos_flags; } ;
typedef TYPE_3__ FLOW_SPEC ;
typedef int * BD_ADDR ;


 int BTM_BUSY ;
 int BTM_CMD_STARTED ;
 int BTM_DEV_REPLY_TIMEOUT ;
 int BTM_NO_RESOURCES ;
 int BTM_TRACE_API (char*,int ,int ,int ,int ,int ,int ) ;
 int BTM_UNKNOWN_ADDR ;
 int BTU_TTYPE_BTM_ACL ;
 int BT_TRANSPORT_BR_EDR ;
 TYPE_2__* btm_bda_to_acl (int *,int ) ;
 TYPE_4__ btm_cb ;
 int btsnd_hcic_qos_setup (int ,int ,int ,int ,int ,int ,int ) ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;

tBTM_STATUS BTM_SetQoS (BD_ADDR bd, FLOW_SPEC *p_flow, tBTM_CMPL_CB *p_cb)
{
    tACL_CONN *p = &btm_cb.acl_db[0];

    BTM_TRACE_API ("BTM_SetQoS: BdAddr: %02x%02x%02x%02x%02x%02x\n",
                   bd[0], bd[1], bd[2],
                   bd[3], bd[4], bd[5]);


    if (btm_cb.devcb.p_qossu_cmpl_cb) {
        return (BTM_BUSY);
    }

    if ( (p = btm_bda_to_acl(bd, BT_TRANSPORT_BR_EDR)) != ((void*)0)) {
        btu_start_timer (&btm_cb.devcb.qossu_timer, BTU_TTYPE_BTM_ACL, BTM_DEV_REPLY_TIMEOUT);
        btm_cb.devcb.p_qossu_cmpl_cb = p_cb;

        if (!btsnd_hcic_qos_setup (p->hci_handle, p_flow->qos_flags, p_flow->service_type,
                                   p_flow->token_rate, p_flow->peak_bandwidth,
                                   p_flow->latency, p_flow->delay_variation)) {
            btm_cb.devcb.p_qossu_cmpl_cb = ((void*)0);
            btu_stop_timer(&btm_cb.devcb.qossu_timer);
            return (BTM_NO_RESOURCES);
        } else {
            return (BTM_CMD_STARTED);
        }
    }


    return (BTM_UNKNOWN_ADDR);
}
