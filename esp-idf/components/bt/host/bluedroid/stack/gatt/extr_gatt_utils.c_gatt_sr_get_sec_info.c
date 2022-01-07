
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBT_TRANSPORT ;
typedef int UINT8 ;
typedef int BD_ADDR ;


 int BTM_GetSecurityFlagsByTransport (int ,int*,int ) ;
 int GATT_SEC_FLAG_ENCRYPTED ;
 int GATT_SEC_FLAG_LKEY_AUTHED ;
 int GATT_SEC_FLAG_LKEY_UNAUTHED ;
 int btm_ble_read_sec_key_size (int ) ;

void gatt_sr_get_sec_info(BD_ADDR rem_bda, tBT_TRANSPORT transport, UINT8 *p_sec_flag, UINT8 *p_key_size)
{
    UINT8 sec_flag = 0;

    BTM_GetSecurityFlagsByTransport(rem_bda, &sec_flag, transport);

    sec_flag &= (GATT_SEC_FLAG_LKEY_UNAUTHED | GATT_SEC_FLAG_LKEY_AUTHED | GATT_SEC_FLAG_ENCRYPTED);

    *p_key_size = btm_ble_read_sec_key_size(rem_bda);

    *p_sec_flag = sec_flag;
}
