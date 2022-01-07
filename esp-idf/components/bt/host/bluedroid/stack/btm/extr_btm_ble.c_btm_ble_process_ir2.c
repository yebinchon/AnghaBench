
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tSMP_ENC ;
struct TYPE_7__ {scalar_t__ opcode; int param_buf; } ;
typedef TYPE_2__ tBTM_RAND_ENC ;
typedef int tBTM_BLE_LOCAL_ID_KEYS ;
typedef int UINT8 ;
struct TYPE_8__ {int * ir; } ;
struct TYPE_6__ {TYPE_3__ id_keys; } ;
struct TYPE_9__ {TYPE_1__ devcb; } ;


 int BTM_TRACE_DEBUG (char*) ;
 int BT_OCTET16_LEN ;
 int BT_OCTET8_LEN ;
 scalar_t__ HCI_BLE_RAND ;
 int SMP_Encrypt (int *,int ,int*,int,int *) ;
 int btm_ble_process_dhk (int *) ;
 TYPE_4__ btm_cb ;
 int memcpy (int *,int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void btm_ble_process_ir2(tBTM_RAND_ENC *p)
{
    UINT8 btm_ble_dhk_pt = 0x03;
    tSMP_ENC output;

    BTM_TRACE_DEBUG ("btm_ble_process_ir2");

    if (p && p->opcode == HCI_BLE_RAND) {

        memcpy(&btm_cb.devcb.id_keys.ir[8], p->param_buf, BT_OCTET8_LEN);



        SMP_Encrypt(btm_cb.devcb.id_keys.ir, BT_OCTET16_LEN, &btm_ble_dhk_pt,
                    1, &output);
        btm_ble_process_dhk(&output);

        BTM_TRACE_DEBUG("BLE IR generated.");
    } else {
        memset(&btm_cb.devcb.id_keys, 0, sizeof(tBTM_BLE_LOCAL_ID_KEYS));
    }
}
