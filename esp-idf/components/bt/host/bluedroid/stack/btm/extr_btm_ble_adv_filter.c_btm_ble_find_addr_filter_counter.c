
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bd_addr; scalar_t__ in_use; } ;
typedef TYPE_1__ tBTM_BLE_PF_COUNT ;
struct TYPE_8__ {int bda; } ;
typedef TYPE_2__ tBLE_BD_ADDR ;
typedef scalar_t__ UINT8 ;
struct TYPE_10__ {TYPE_1__* p_addr_filter_count; } ;
struct TYPE_9__ {scalar_t__ max_filter; } ;


 int BD_ADDR_LEN ;
 TYPE_6__ btm_ble_adv_filt_cb ;
 TYPE_3__ cmn_ble_adv_vsc_cb ;
 scalar_t__ memcmp (int ,int ,int ) ;

tBTM_BLE_PF_COUNT *btm_ble_find_addr_filter_counter(tBLE_BD_ADDR *p_le_bda)
{
    UINT8 i;
    tBTM_BLE_PF_COUNT *p_addr_filter = &btm_ble_adv_filt_cb.p_addr_filter_count[1];

    if (p_le_bda == ((void*)0)) {
        return &btm_ble_adv_filt_cb.p_addr_filter_count[0];
    }

    for (i = 0; i < cmn_ble_adv_vsc_cb.max_filter; i ++, p_addr_filter ++) {
        if (p_addr_filter->in_use &&
                memcmp(p_le_bda->bda, p_addr_filter->bd_addr, BD_ADDR_LEN) == 0) {
            return p_addr_filter;
        }
    }
    return ((void*)0);
}
