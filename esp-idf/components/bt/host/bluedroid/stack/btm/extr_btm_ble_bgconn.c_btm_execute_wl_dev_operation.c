
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int addr_type; int bd_addr; int to_add; scalar_t__ in_use; } ;
typedef TYPE_2__ tBTM_BLE_WL_OP ;
typedef scalar_t__ UINT8 ;
struct TYPE_5__ {TYPE_2__* wl_op_q; } ;
struct TYPE_7__ {TYPE_1__ ble_ctr_cb; } ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BTM_BLE_MAX_BG_CONN_DEV_NUM ;
 scalar_t__ TRUE ;
 scalar_t__ btm_add_dev_to_controller (int ,int ,int ) ;
 TYPE_4__ btm_cb ;
 int memset (TYPE_2__*,int ,int) ;

BOOLEAN btm_execute_wl_dev_operation(void)
{
    tBTM_BLE_WL_OP *p_dev_op = btm_cb.ble_ctr_cb.wl_op_q;
    UINT8 i = 0;
    BOOLEAN rt = TRUE;

    for (i = 0; i < BTM_BLE_MAX_BG_CONN_DEV_NUM && rt; i ++, p_dev_op ++) {
        if (p_dev_op->in_use) {
            rt = btm_add_dev_to_controller(p_dev_op->to_add, p_dev_op->bd_addr, p_dev_op->addr_type);
            memset(p_dev_op, 0, sizeof(tBTM_BLE_WL_OP));
        } else {
            break;
        }
    }
    return rt;
}
