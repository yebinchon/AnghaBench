
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tBT_TRANSPORT ;
struct TYPE_4__ {int sec_flags; int link_key; void* bond_type; } ;
typedef TYPE_1__ tBTM_SEC_DEV_REC ;


 void* BOND_TYPE_UNKNOWN ;
 int BTM_SEC_16_DIGIT_PIN_AUTHED ;
 int BTM_SEC_AUTHENTICATED ;
 int BTM_SEC_AUTHORIZED ;
 int BTM_SEC_ENCRYPTED ;
 int BTM_SEC_IN_USE ;
 int BTM_SEC_LE_AUTHENTICATED ;
 int BTM_SEC_LE_ENCRYPTED ;
 int BTM_SEC_LE_LINK_KEY_AUTHED ;
 int BTM_SEC_LE_LINK_KEY_KNOWN ;
 int BTM_SEC_LE_NAME_KNOWN ;
 int BTM_SEC_LINK_KEY_AUTHED ;
 int BTM_SEC_LINK_KEY_KNOWN ;
 int BTM_SEC_NAME_KNOWN ;
 int BTM_SEC_ROLE_SWITCHED ;
 scalar_t__ BT_TRANSPORT_BR_EDR ;
 scalar_t__ BT_TRANSPORT_LE ;
 int LINK_KEY_LEN ;
 int btm_sec_clear_ble_keys (TYPE_1__*) ;
 int memset (int ,int ,int ) ;

void btm_sec_free_dev (tBTM_SEC_DEV_REC *p_dev_rec, tBT_TRANSPORT transport)
{
    if (transport == BT_TRANSPORT_BR_EDR) {
        memset(p_dev_rec->link_key, 0, LINK_KEY_LEN);
        p_dev_rec->sec_flags &= ~(BTM_SEC_AUTHORIZED | BTM_SEC_AUTHENTICATED
                                | BTM_SEC_ENCRYPTED | BTM_SEC_NAME_KNOWN
                                | BTM_SEC_LINK_KEY_KNOWN | BTM_SEC_LINK_KEY_AUTHED
                                | BTM_SEC_ROLE_SWITCHED | BTM_SEC_16_DIGIT_PIN_AUTHED);
    } else if (transport == BT_TRANSPORT_LE) {
        p_dev_rec->bond_type = BOND_TYPE_UNKNOWN;
        p_dev_rec->sec_flags &= ~(BTM_SEC_LE_AUTHENTICATED | BTM_SEC_LE_ENCRYPTED
                                | BTM_SEC_LE_NAME_KNOWN | BTM_SEC_LE_LINK_KEY_KNOWN
                                | BTM_SEC_LE_LINK_KEY_AUTHED | BTM_SEC_ROLE_SWITCHED);


        btm_sec_clear_ble_keys (p_dev_rec);

    } else {
        p_dev_rec->bond_type = BOND_TYPE_UNKNOWN;
        memset(p_dev_rec->link_key, 0, LINK_KEY_LEN);
        p_dev_rec->sec_flags = 0;



        btm_sec_clear_ble_keys (p_dev_rec);

    }

    if(p_dev_rec->sec_flags == BTM_SEC_IN_USE) {
        p_dev_rec->sec_flags = 0;
    }
}
