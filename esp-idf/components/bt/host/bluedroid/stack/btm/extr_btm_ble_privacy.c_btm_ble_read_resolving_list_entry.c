
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_5__ {int in_controller_list; int resolving_list_index; int static_addr; int static_addr_type; } ;
struct TYPE_6__ {int bd_addr; TYPE_1__ ble; } ;
typedef TYPE_2__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
struct TYPE_7__ {scalar_t__ (* supports_ble_privacy ) () ;} ;


 int BTM_BLE_META_READ_IRK_ENTRY ;
 int BTM_BLE_META_READ_IRK_LEN ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_NO_RESOURCES ;
 int BTM_RESOLVING_LIST_BIT ;
 scalar_t__ BTM_VendorSpecificCommand (int ,int ,int *,int ) ;
 scalar_t__ BTM_WRONG_MODE ;
 int HCI_VENDOR_BLE_RPA_VSC ;
 int UINT8_TO_STREAM (int *,int ) ;
 int btm_ble_enq_resolving_list_pending (int ,int ) ;
 int btm_ble_resolving_list_vsc_op_cmpl ;
 scalar_t__ btsnd_hcic_ble_read_resolvable_addr_peer (int ,int ) ;
 TYPE_3__* controller_get_interface () ;
 scalar_t__ stub1 () ;

tBTM_STATUS btm_ble_read_resolving_list_entry(tBTM_SEC_DEV_REC *p_dev_rec)
{
    tBTM_STATUS st = BTM_NO_RESOURCES;

    if (!(p_dev_rec->ble.in_controller_list & BTM_RESOLVING_LIST_BIT)) {
        return BTM_WRONG_MODE;
    }

    if (controller_get_interface()->supports_ble_privacy()) {
        if (btsnd_hcic_ble_read_resolvable_addr_peer(p_dev_rec->ble.static_addr_type,
                p_dev_rec->ble.static_addr)) {
            st = BTM_CMD_STARTED;
        }
    } else {
        UINT8 param[20] = {0};
        UINT8 *p = param;

        UINT8_TO_STREAM(p, BTM_BLE_META_READ_IRK_ENTRY);
        UINT8_TO_STREAM(p, p_dev_rec->ble.resolving_list_index);

        st = BTM_VendorSpecificCommand (HCI_VENDOR_BLE_RPA_VSC,
                                        BTM_BLE_META_READ_IRK_LEN,
                                        param,
                                        btm_ble_resolving_list_vsc_op_cmpl);
    }

    if (st == BTM_CMD_STARTED) {
        btm_ble_enq_resolving_list_pending(p_dev_rec->bd_addr,
                                           BTM_BLE_META_READ_IRK_ENTRY);
    }

    return st;
}
