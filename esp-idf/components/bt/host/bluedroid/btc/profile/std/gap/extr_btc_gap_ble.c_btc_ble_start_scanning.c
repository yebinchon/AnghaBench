
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tBTA_START_STOP_SCAN_CMPL_CBACK ;
typedef int tBTA_DM_SEARCH_CBACK ;


 int BTA_DmBleScan (int,int ,int *,int *) ;
 int BTC_TRACE_ERROR (char*) ;
 int btc_adv_list_refresh () ;

__attribute__((used)) static void btc_ble_start_scanning(uint32_t duration,
                                   tBTA_DM_SEARCH_CBACK *results_cb,
                                   tBTA_START_STOP_SCAN_CMPL_CBACK *start_scan_cb)
{
    if ((results_cb != ((void*)0)) && (start_scan_cb != ((void*)0))) {




        BTA_DmBleScan(1, duration, results_cb, start_scan_cb);
    } else {
        BTC_TRACE_ERROR("The start_scan_cb or results_cb invalid\n");
    }
}
