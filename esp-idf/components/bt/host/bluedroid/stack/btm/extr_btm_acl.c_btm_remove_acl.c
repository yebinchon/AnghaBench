
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBT_TRANSPORT ;
typedef int tBTM_STATUS ;
struct TYPE_3__ {scalar_t__ rs_disc_pending; scalar_t__ sec_state; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BTM_GetHCIConnHandle (int ,int ) ;
 int BTM_NO_RESOURCES ;
 scalar_t__ BTM_SEC_DISC_PENDING ;
 scalar_t__ BTM_SEC_RS_PENDING ;
 scalar_t__ BTM_SEC_STATE_DISCONNECTING ;
 int BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_UNKNOWN_ADDR ;
 int HCI_ERR_PEER_USER ;
 TYPE_1__* btm_find_dev (int ) ;
 int btsnd_hcic_disconnect (int,int ) ;

tBTM_STATUS btm_remove_acl (BD_ADDR bd_addr, tBT_TRANSPORT transport)
{
    UINT16 hci_handle = BTM_GetHCIConnHandle(bd_addr, transport);
    tBTM_STATUS status = BTM_SUCCESS;

    BTM_TRACE_DEBUG ("btm_remove_acl\n");

    tBTM_SEC_DEV_REC *p_dev_rec = btm_find_dev (bd_addr);


    if (p_dev_rec && (p_dev_rec->rs_disc_pending == BTM_SEC_RS_PENDING)) {
        p_dev_rec->rs_disc_pending = BTM_SEC_DISC_PENDING;
    } else

    {
        if (hci_handle != 0xFFFF && p_dev_rec &&
                p_dev_rec->sec_state != BTM_SEC_STATE_DISCONNECTING) {
            if (!btsnd_hcic_disconnect (hci_handle, HCI_ERR_PEER_USER)) {
                status = BTM_NO_RESOURCES;
            }
        } else {
            status = BTM_UNKNOWN_ADDR;
        }
    }

    return status;
}
