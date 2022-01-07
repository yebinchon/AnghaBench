
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BTA_DisableBluetooth () ;
 scalar_t__ BTA_SUCCESS ;
 int BTC_MAIN_DISABLE_FUTURE ;
 int FUTURE_FAIL ;
 int btc_config_shut_down () ;
 int * btc_main_get_future_p (int ) ;
 int future_ready (int ,int ) ;

__attribute__((used)) static void btc_disable_bluetooth(void)
{



    if (BTA_DisableBluetooth() != BTA_SUCCESS) {
        future_ready(*btc_main_get_future_p(BTC_MAIN_DISABLE_FUTURE), FUTURE_FAIL);
    }
}
