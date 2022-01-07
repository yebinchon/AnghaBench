
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btc_cleanup_adv_data (int *) ;
 int gl_bta_adv_data ;
 int gl_bta_scan_rsp_data ;

void btc_gap_ble_deinit(void)
{
    btc_cleanup_adv_data(&gl_bta_adv_data);
    btc_cleanup_adv_data(&gl_bta_scan_rsp_data);
}
