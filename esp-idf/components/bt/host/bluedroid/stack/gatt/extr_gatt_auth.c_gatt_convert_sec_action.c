
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_SEC_ACTION ;
typedef int tBTM_BLE_SEC_ACT ;
typedef int BOOLEAN ;


 int BTM_BLE_SEC_ENCRYPT ;
 int BTM_BLE_SEC_ENCRYPT_MITM ;
 int BTM_BLE_SEC_ENCRYPT_NO_MITM ;
 int FALSE ;



 int TRUE ;

__attribute__((used)) static BOOLEAN gatt_convert_sec_action(tGATT_SEC_ACTION gatt_sec_act, tBTM_BLE_SEC_ACT *p_btm_sec_act )
{
    BOOLEAN status = TRUE;
    switch (gatt_sec_act) {
    case 130:
        *p_btm_sec_act = BTM_BLE_SEC_ENCRYPT;
        break;
    case 128:
        *p_btm_sec_act = BTM_BLE_SEC_ENCRYPT_NO_MITM;
        break;
    case 129:
        *p_btm_sec_act = BTM_BLE_SEC_ENCRYPT_MITM;
        break;
    default:
        status = FALSE;
        break;
    }

    return status;
}
