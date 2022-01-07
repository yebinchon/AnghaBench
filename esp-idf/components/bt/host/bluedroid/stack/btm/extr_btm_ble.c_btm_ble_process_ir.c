
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ opcode; int param_buf; } ;
typedef TYPE_2__ tBTM_RAND_ENC ;
typedef int tBTM_BLE_LOCAL_ID_KEYS ;
struct TYPE_8__ {int ir; } ;
struct TYPE_6__ {TYPE_3__ id_keys; } ;
struct TYPE_9__ {TYPE_1__ devcb; } ;


 int BTM_TRACE_DEBUG (char*) ;
 int BTM_TRACE_ERROR (char*) ;
 int BT_OCTET8_LEN ;
 scalar_t__ HCI_BLE_RAND ;
 scalar_t__ btm_ble_process_ir2 ;
 TYPE_4__ btm_cb ;
 int btsnd_hcic_ble_rand (void*) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void btm_ble_process_ir(tBTM_RAND_ENC *p)
{
    BTM_TRACE_DEBUG ("btm_ble_process_ir");

    if (p && p->opcode == HCI_BLE_RAND) {

        memcpy(btm_cb.devcb.id_keys.ir, p->param_buf, BT_OCTET8_LEN);

        if (!btsnd_hcic_ble_rand((void *)btm_ble_process_ir2)) {
            BTM_TRACE_ERROR("Generating IR2 failed.");
            memset(&btm_cb.devcb.id_keys, 0, sizeof(tBTM_BLE_LOCAL_ID_KEYS));
        }
    }
}
