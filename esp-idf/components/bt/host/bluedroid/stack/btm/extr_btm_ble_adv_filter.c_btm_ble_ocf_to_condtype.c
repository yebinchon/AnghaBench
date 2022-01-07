
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
 int BTM_BLE_PF_ADDR_FILTER ;
 int BTM_BLE_PF_LOCAL_NAME ;
 int BTM_BLE_PF_MANU_DATA ;
 int BTM_BLE_PF_SRVC_DATA_PATTERN ;
 int BTM_BLE_PF_SRVC_SOL_UUID ;
 int BTM_BLE_PF_SRVC_UUID ;
 int BTM_BLE_PF_TYPE_ALL ;
 int BTM_BLE_PF_TYPE_MAX ;

UINT8 btm_ble_ocf_to_condtype(UINT8 ocf)
{
    UINT8 cond_type = 0;

    switch (ocf) {
    case 133:
        cond_type = 133;
        break;
    case 135:
        cond_type = BTM_BLE_PF_ADDR_FILTER;
        break;
    case 128:
        cond_type = BTM_BLE_PF_SRVC_UUID;
        break;
    case 130:
        cond_type = BTM_BLE_PF_SRVC_SOL_UUID;
        break;
    case 132:
        cond_type = BTM_BLE_PF_LOCAL_NAME;
        break;
    case 131:
        cond_type = BTM_BLE_PF_MANU_DATA;
        break;
    case 129:
        cond_type = BTM_BLE_PF_SRVC_DATA_PATTERN;
        break;
    case 134:
        cond_type = BTM_BLE_PF_TYPE_ALL;
        break;
    default:
        cond_type = BTM_BLE_PF_TYPE_MAX;
        break;
    }
    return cond_type;
}
