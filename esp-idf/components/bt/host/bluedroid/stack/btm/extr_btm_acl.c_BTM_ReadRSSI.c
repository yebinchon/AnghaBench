
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tBT_TRANSPORT ;
typedef void* tBTM_STATUS ;
struct TYPE_11__ {void* status; } ;
typedef TYPE_2__ tBTM_RSSI_RESULTS ;
typedef int (* tBTM_CMPL_CB ) (TYPE_2__*) ;
struct TYPE_12__ {int hci_handle; } ;
typedef TYPE_4__ tACL_CONN ;
struct TYPE_10__ {int rssi_timer; int (* p_rssi_cmpl_cb ) (TYPE_2__*) ;} ;
struct TYPE_13__ {TYPE_1__ devcb; } ;
typedef int * BD_ADDR ;


 void* BTM_BUSY ;
 void* BTM_CMD_STARTED ;
 int BTM_DEV_REPLY_TIMEOUT ;
 void* BTM_NO_RESOURCES ;
 int BTM_TRACE_API (char*,int ,int ,int ,int ,int ,int ) ;
 void* BTM_UNKNOWN_ADDR ;
 int BTU_TTYPE_BTM_ACL ;
 TYPE_4__* btm_bda_to_acl (int *,int ) ;
 TYPE_7__ btm_cb ;
 int btsnd_hcic_read_rssi (int ) ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

tBTM_STATUS BTM_ReadRSSI (BD_ADDR remote_bda, tBT_TRANSPORT transport, tBTM_CMPL_CB *p_cb)
{
    tACL_CONN *p;

    BTM_TRACE_API ("BTM_ReadRSSI: RemBdAddr: %02x%02x%02x%02x%02x%02x\n",
                   remote_bda[0], remote_bda[1], remote_bda[2],
                   remote_bda[3], remote_bda[4], remote_bda[5]);
    tBTM_RSSI_RESULTS result;

    if (btm_cb.devcb.p_rssi_cmpl_cb) {
        result.status = BTM_BUSY;
        (*p_cb)(&result);
        return (BTM_BUSY);
    }

    p = btm_bda_to_acl(remote_bda, transport);
    if (p != (tACL_CONN *)((void*)0)) {
        btu_start_timer (&btm_cb.devcb.rssi_timer, BTU_TTYPE_BTM_ACL,
                         BTM_DEV_REPLY_TIMEOUT);

        btm_cb.devcb.p_rssi_cmpl_cb = p_cb;

        if (!btsnd_hcic_read_rssi (p->hci_handle)) {
            btm_cb.devcb.p_rssi_cmpl_cb = ((void*)0);
            btu_stop_timer (&btm_cb.devcb.rssi_timer);
            result.status = BTM_NO_RESOURCES;
            (*p_cb)(&result);
            return (BTM_NO_RESOURCES);
        } else {
            return (BTM_CMD_STARTED);
        }
    }


    return (BTM_UNKNOWN_ADDR);
}
