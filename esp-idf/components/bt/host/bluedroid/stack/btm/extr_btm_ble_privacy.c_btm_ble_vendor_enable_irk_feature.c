
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_STATUS ;
typedef int UINT8 ;
typedef scalar_t__ BOOLEAN ;


 int BTM_BLE_IRK_ENABLE_LEN ;
 int BTM_BLE_META_IRK_ENABLE ;
 int BTM_MODE_UNSUPPORTED ;
 int BTM_VendorSpecificCommand (int ,int ,int *,int ) ;
 int HCI_VENDOR_BLE_RPA_VSC ;
 int UINT8_TO_STREAM (int *,int) ;
 int btm_ble_resolving_list_vsc_op_cmpl ;
 int memset (int *,int ,int) ;

tBTM_STATUS btm_ble_vendor_enable_irk_feature(BOOLEAN enable)
{
    UINT8 param[20], *p;
    tBTM_STATUS st = BTM_MODE_UNSUPPORTED;

    p = param;
    memset(param, 0, 20);


    UINT8_TO_STREAM(p, BTM_BLE_META_IRK_ENABLE);
    UINT8_TO_STREAM(p, enable ? 0x01 : 0x00);

    st = BTM_VendorSpecificCommand (HCI_VENDOR_BLE_RPA_VSC, BTM_BLE_IRK_ENABLE_LEN,
                                    param, btm_ble_resolving_list_vsc_op_cmpl);

    return st;
}
