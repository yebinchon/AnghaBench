
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * p_addr_filter_count; } ;


 TYPE_1__ btm_ble_adv_filt_cb ;
 int * btm_ble_adv_filt_cb_ptr ;
 int * cmn_ble_adv_vsc_cb_ptr ;
 int osi_free (int *) ;

void btm_ble_adv_filter_cleanup(void)
{
    if (btm_ble_adv_filt_cb.p_addr_filter_count) {
        osi_free(btm_ble_adv_filt_cb.p_addr_filter_count);
        btm_ble_adv_filt_cb.p_addr_filter_count = ((void*)0);
    }


    osi_free(btm_ble_adv_filt_cb_ptr);
    btm_ble_adv_filt_cb_ptr = ((void*)0);
    osi_free(cmn_ble_adv_vsc_cb_ptr);
    cmn_ble_adv_vsc_cb_ptr = ((void*)0);

}
