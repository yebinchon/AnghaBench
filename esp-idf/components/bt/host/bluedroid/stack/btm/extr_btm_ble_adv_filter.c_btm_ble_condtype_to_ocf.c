
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int BTM_BLE_META_PF_ADDR ;
 int BTM_BLE_META_PF_ALL ;
 int BTM_BLE_META_PF_LOCAL_NAME ;
 int BTM_BLE_META_PF_MANU_DATA ;
 int BTM_BLE_META_PF_SOL_UUID ;
 int BTM_BLE_META_PF_SRVC_DATA ;
 int BTM_BLE_META_PF_UUID ;







 int BTM_BLE_PF_TYPE_MAX ;

UINT8 btm_ble_condtype_to_ocf(UINT8 cond_type)
{
    UINT8 ocf = 0;

    switch (cond_type) {
    case 134:
        ocf = BTM_BLE_META_PF_ADDR;
        break;
    case 129:
        ocf = BTM_BLE_META_PF_UUID;
        break;
    case 130:
        ocf = BTM_BLE_META_PF_SOL_UUID;
        break;
    case 133:
        ocf = BTM_BLE_META_PF_LOCAL_NAME;
        break;
    case 132:
        ocf = BTM_BLE_META_PF_MANU_DATA;
        break;
    case 131:
        ocf = BTM_BLE_META_PF_SRVC_DATA;
        break;
    case 128:
        ocf = BTM_BLE_META_PF_ALL;
        break;
    default:
        ocf = BTM_BLE_PF_TYPE_MAX;
        break;
    }
    return ocf;
}
