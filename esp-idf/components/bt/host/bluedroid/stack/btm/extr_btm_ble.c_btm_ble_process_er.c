
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


 int BTM_TRACE_DEBUG (char*) ;
 int BTM_TRACE_ERROR (char*) ;
 int BT_OCTET8_LEN ;
 scalar_t__ HCI_BLE_RAND ;
 scalar_t__ btm_ble_process_er2 ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_ble_rand (void*) ;
 int memcpy (int *,int ,int ) ;
 int memset (int **,int ,int) ;

__attribute__((used)) static void btm_ble_process_er(tBTM_RAND_ENC *p)
{
    BTM_TRACE_DEBUG ("btm_ble_process_er");

    if (p && p->opcode == HCI_BLE_RAND) {
        memcpy(&btm_cb.devcb.ble_encryption_key_value[0], p->param_buf, BT_OCTET8_LEN);

        if (!btsnd_hcic_ble_rand((void *)btm_ble_process_er2)) {
            memset(&btm_cb.devcb.ble_encryption_key_value, 0, sizeof(BT_OCTET16));
            BTM_TRACE_ERROR("Generating ER2 failed.");
        }
    } else {
        BTM_TRACE_ERROR("Generating ER1 exception.");
    }
}
