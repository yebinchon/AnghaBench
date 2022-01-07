
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ opcode; int param_buf; } ;
typedef TYPE_2__ tBTM_RAND_ENC ;
struct TYPE_5__ {int * ble_encryption_key_value; } ;
struct TYPE_7__ {TYPE_1__ devcb; } ;
typedef int BT_OCTET16 ;


 int BTM_BLE_KEY_TYPE_ER ;
 int BTM_TRACE_DEBUG (char*) ;
 int BTM_TRACE_ERROR (char*) ;
 int BT_OCTET8_LEN ;
 scalar_t__ HCI_BLE_RAND ;
 TYPE_3__ btm_cb ;
 int btm_notify_new_key (int ) ;
 int memcpy (int *,int ,int ) ;
 int memset (int **,int ,int) ;

__attribute__((used)) static void btm_ble_process_er2(tBTM_RAND_ENC *p)
{
    BTM_TRACE_DEBUG ("btm_ble_process_er2");

    if (p && p->opcode == HCI_BLE_RAND) {
        memcpy(&btm_cb.devcb.ble_encryption_key_value[8], p->param_buf, BT_OCTET8_LEN);
        btm_notify_new_key(BTM_BLE_KEY_TYPE_ER);
    } else {
        BTM_TRACE_ERROR("Generating ER2 exception.");
        memset(&btm_cb.devcb.ble_encryption_key_value, 0, sizeof(BT_OCTET16));
    }
}
