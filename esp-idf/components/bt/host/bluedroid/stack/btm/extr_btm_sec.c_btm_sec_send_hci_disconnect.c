
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_3__ {int sec_state; scalar_t__ hci_handle; scalar_t__ ble_hci_handle; scalar_t__ rs_disc_pending; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;


 int BTM_CMD_STARTED ;
 int BTM_NO_RESOURCES ;
 scalar_t__ BTM_SEC_DISC_PENDING ;
 scalar_t__ BTM_SEC_RS_PENDING ;



 int BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_TRACE_EVENT (char*,scalar_t__,int) ;
 int btsnd_hcic_disconnect (scalar_t__,int) ;

__attribute__((used)) static tBTM_STATUS btm_sec_send_hci_disconnect (tBTM_SEC_DEV_REC *p_dev_rec, UINT8 reason, UINT16 conn_handle)
{
    UINT8 old_state = p_dev_rec->sec_state;
    tBTM_STATUS status = BTM_CMD_STARTED;

    BTM_TRACE_EVENT ("btm_sec_send_hci_disconnect:  handle:0x%x, reason=0x%x\n",
                     conn_handle, reason);


    switch (old_state) {
    case 130:
        if (conn_handle == p_dev_rec->hci_handle) {
            return status;
        }

        p_dev_rec->sec_state = 128;
        break;


    case 129:
        if (conn_handle == p_dev_rec->ble_hci_handle) {
            return status;
        }

        p_dev_rec->sec_state = 128;
        break;

    case 128:
        return status;


    default:
        p_dev_rec->sec_state = (conn_handle == p_dev_rec->hci_handle) ?
                               130 : 129;

        break;
    }


    if (p_dev_rec->rs_disc_pending == BTM_SEC_RS_PENDING && p_dev_rec->hci_handle == conn_handle) {
        BTM_TRACE_DEBUG("RS in progress - Set DISC Pending flag in btm_sec_send_hci_disconnect to delay disconnect\n");
        p_dev_rec->rs_disc_pending = BTM_SEC_DISC_PENDING;
        status = BTM_SUCCESS;
    }

    else if (!btsnd_hcic_disconnect (conn_handle, reason)) {

        p_dev_rec->sec_state = old_state;
        status = BTM_NO_RESOURCES;
    }

    return status;
}
