
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {int remname_bda; scalar_t__ remname_active; } ;
typedef TYPE_1__ tBTM_INQUIRY_VAR_ST ;
struct TYPE_4__ {TYPE_1__ btm_inq_vars; } ;


 int BTM_CMD_STARTED ;
 int BTM_NO_RESOURCES ;
 int BTM_TRACE_API (char*) ;
 int BTM_UNKNOWN_ADDR ;
 scalar_t__ BTM_UseLeLink (int ) ;
 int BTM_WRONG_MODE ;
 scalar_t__ btm_ble_cancel_remote_name (int ) ;
 TYPE_2__ btm_cb ;
 scalar_t__ btsnd_hcic_rmt_name_req_cancel (int ) ;

tBTM_STATUS BTM_CancelRemoteDeviceName (void)
{
    tBTM_INQUIRY_VAR_ST *p_inq = &btm_cb.btm_inq_vars;

    BTM_TRACE_API ("BTM_CancelRemoteDeviceName()\n");


    if (p_inq->remname_active) {

        if (BTM_UseLeLink(p_inq->remname_bda)) {
            if (btm_ble_cancel_remote_name(p_inq->remname_bda)) {
                return (BTM_CMD_STARTED);
            } else {
                return (BTM_UNKNOWN_ADDR);
            }
        } else

        {
            if (btsnd_hcic_rmt_name_req_cancel (p_inq->remname_bda)) {
                return (BTM_CMD_STARTED);
            } else {
                return (BTM_NO_RESOURCES);
            }
        }
    } else {
        return (BTM_WRONG_MODE);
    }
}
