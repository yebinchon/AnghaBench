
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int in_use; int bd_addr; } ;
typedef TYPE_1__ tBTM_BLE_PF_COUNT ;
typedef scalar_t__ UINT8 ;
struct TYPE_7__ {TYPE_1__* p_addr_filter_count; } ;
struct TYPE_6__ {scalar_t__ max_filter; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int TRUE ;
 TYPE_4__ btm_ble_adv_filt_cb ;
 TYPE_2__ cmn_ble_adv_vsc_cb ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int na_bda ;

tBTM_BLE_PF_COUNT *btm_ble_alloc_addr_filter_counter(BD_ADDR bd_addr)
{
    UINT8 i;
    tBTM_BLE_PF_COUNT *p_addr_filter = &btm_ble_adv_filt_cb.p_addr_filter_count[1];

    for (i = 0; i < cmn_ble_adv_vsc_cb.max_filter; i ++, p_addr_filter ++) {
        if (memcmp(na_bda, p_addr_filter->bd_addr, BD_ADDR_LEN) == 0) {
            memcpy(p_addr_filter->bd_addr, bd_addr, BD_ADDR_LEN);
            p_addr_filter->in_use = TRUE;
            return p_addr_filter;
        }
    }
    return ((void*)0);
}
