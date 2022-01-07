
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int private_addr; } ;
typedef TYPE_3__ tBTM_LE_RANDOM_CB ;
struct TYPE_5__ {scalar_t__ adv_mode; } ;
struct TYPE_6__ {TYPE_1__ inq_var; TYPE_3__ addr_mgnt_cb; } ;
struct TYPE_8__ {TYPE_2__ ble_ctr_cb; } ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_BLE_ADV_DISABLE ;
 scalar_t__ BTM_BLE_ADV_ENABLE ;
 int BTM_TRACE_DEBUG (char*) ;
 TYPE_4__ btm_cb ;
 int btsnd_hcic_ble_set_adv_enable (scalar_t__) ;
 int btsnd_hcic_ble_set_random_addr (int ) ;
 int memcpy (int ,int ,int ) ;

void btm_set_random_address(BD_ADDR random_bda)
{
    tBTM_LE_RANDOM_CB *p_cb = &btm_cb.ble_ctr_cb.addr_mgnt_cb;
    BOOLEAN adv_mode = btm_cb.ble_ctr_cb.inq_var.adv_mode ;

    BTM_TRACE_DEBUG ("btm_set_random_address");

    if (adv_mode == BTM_BLE_ADV_ENABLE) {
        btsnd_hcic_ble_set_adv_enable (BTM_BLE_ADV_DISABLE);
    }

    memcpy(p_cb->private_addr, random_bda, BD_ADDR_LEN);
    btsnd_hcic_ble_set_random_addr(p_cb->private_addr);

    if (adv_mode == BTM_BLE_ADV_ENABLE) {
        btsnd_hcic_ble_set_adv_enable (BTM_BLE_ADV_ENABLE);
    }


}
