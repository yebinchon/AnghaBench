
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ own_addr_type; int exist_addr_bit; int static_rand_addr; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_7__ {TYPE_2__ addr_mgnt_cb; TYPE_1__ inq_var; } ;
typedef TYPE_3__ tBTM_BLE_CB ;
struct TYPE_8__ {TYPE_3__ ble_ctr_cb; } ;


 int BD_ADDR_LEN ;
 scalar_t__ BLE_ADDR_PUBLIC ;
 scalar_t__ BLE_ADDR_RANDOM ;
 int BTM_BLE_GAP_ADDR_BIT_RANDOM ;
 scalar_t__ BTM_BLE_IDLE ;
 scalar_t__ BTM_BLE_STOP_ADV ;
 scalar_t__ BTM_BLE_STOP_SCAN ;
 int BTM_TRACE_ERROR (char*) ;
 TYPE_4__ btm_cb ;
 int memset (int ,int ,int ) ;

void BTM_BleClearRandAddress(void)
{
    tBTM_BLE_CB *p_cb = &btm_cb.ble_ctr_cb;
    if (btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type == BLE_ADDR_RANDOM && (!(p_cb->inq_var.state == BTM_BLE_STOP_SCAN || p_cb->inq_var.state == BTM_BLE_STOP_ADV || p_cb->inq_var.state == BTM_BLE_IDLE))) {
        BTM_TRACE_ERROR("Advertising or scaning now, can't restore public address ");
        return;
    }
    memset(btm_cb.ble_ctr_cb.addr_mgnt_cb.static_rand_addr, 0, BD_ADDR_LEN);
    btm_cb.ble_ctr_cb.addr_mgnt_cb.exist_addr_bit &= (~BTM_BLE_GAP_ADDR_BIT_RANDOM);
    btm_cb.ble_ctr_cb.addr_mgnt_cb.own_addr_type = BLE_ADDR_PUBLIC;
}
