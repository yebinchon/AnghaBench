
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int UINT8 ;
struct TYPE_2__ {scalar_t__ (* supports_ble_privacy ) () ;} ;


 int BTM_BLE_META_CLEAR_IRK_LEN ;
 int BTM_BLE_META_CLEAR_IRK_LIST ;
 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int BTM_VendorSpecificCommand (int ,int ,int *,int ) ;
 int HCI_VENDOR_BLE_RPA_VSC ;
 int UINT8_TO_STREAM (int *,int ) ;
 int btm_ble_resolving_list_vsc_op_cmpl ;
 scalar_t__ btsnd_hcic_ble_clear_resolving_list () ;
 TYPE_1__* controller_get_interface () ;
 scalar_t__ stub1 () ;

tBTM_STATUS btm_ble_clear_resolving_list(void)
{
    tBTM_STATUS st = BTM_NO_RESOURCES;

    if (controller_get_interface()->supports_ble_privacy()) {
        if (btsnd_hcic_ble_clear_resolving_list()) {
            st = BTM_SUCCESS;
        }
    } else {
        UINT8 param[20] = {0};
        UINT8 *p = param;

        UINT8_TO_STREAM(p, BTM_BLE_META_CLEAR_IRK_LIST);
        st = BTM_VendorSpecificCommand (HCI_VENDOR_BLE_RPA_VSC,
                                        BTM_BLE_META_CLEAR_IRK_LEN,
                                        param,
                                        btm_ble_resolving_list_vsc_op_cmpl);
    }

    return st;
}
