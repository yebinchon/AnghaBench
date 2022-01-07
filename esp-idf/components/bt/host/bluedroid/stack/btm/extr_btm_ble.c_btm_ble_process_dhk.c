
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ opcode; int param_buf; } ;
typedef TYPE_2__ tSMP_ENC ;
typedef int tBTM_BLE_LOCAL_ID_KEYS ;
typedef int UINT8 ;
struct TYPE_10__ {int ir; int dhk; } ;
struct TYPE_8__ {TYPE_3__ id_keys; } ;
struct TYPE_11__ {TYPE_1__ devcb; } ;


 int BTM_TRACE_DEBUG (char*) ;
 int BT_OCTET16_LEN ;
 scalar_t__ HCI_BLE_ENCRYPT ;
 int SMP_Encrypt (int ,int ,int*,int,TYPE_2__*) ;
 int btm_ble_process_irk (TYPE_2__*) ;
 TYPE_4__ btm_cb ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void btm_ble_process_dhk(tSMP_ENC *p)
{
    UINT8 btm_ble_irk_pt = 0x01;
    tSMP_ENC output;

    BTM_TRACE_DEBUG ("btm_ble_process_dhk");

    if (p && p->opcode == HCI_BLE_ENCRYPT) {
        memcpy(btm_cb.devcb.id_keys.dhk, p->param_buf, BT_OCTET16_LEN);
        BTM_TRACE_DEBUG("BLE DHK generated.");


        if (!SMP_Encrypt(btm_cb.devcb.id_keys.ir, BT_OCTET16_LEN, &btm_ble_irk_pt,
                         1, &output)) {

            memset(&btm_cb.devcb.id_keys, 0, sizeof(tBTM_BLE_LOCAL_ID_KEYS));
        } else {
            btm_ble_process_irk(&output);
        }
    } else {

        memset(&btm_cb.devcb.id_keys, 0, sizeof(tBTM_BLE_LOCAL_ID_KEYS));
    }
}
