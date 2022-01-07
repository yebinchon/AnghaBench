
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTC_MAIN_DEINIT_FUTURE ;
 int FUTURE_SUCCESS ;
 int bta_dm_sm_deinit () ;
 int bta_gattc_deinit () ;
 int bta_gatts_deinit () ;
 int btc_config_clean_up () ;
 int btc_gap_ble_deinit () ;
 int * btc_main_get_future_p (int ) ;
 int bte_main_shutdown () ;
 int future_ready (int ,int ) ;
 int osi_alarm_deinit () ;
 int osi_alarm_delete_mux () ;

__attribute__((used)) static void btc_deinit_bluetooth(void)
{

    btc_gap_ble_deinit();

    bta_dm_sm_deinit();






    bte_main_shutdown();



    osi_alarm_deinit();
    osi_alarm_delete_mux();
    future_ready(*btc_main_get_future_p(BTC_MAIN_DEINIT_FUTURE), FUTURE_SUCCESS);
}
