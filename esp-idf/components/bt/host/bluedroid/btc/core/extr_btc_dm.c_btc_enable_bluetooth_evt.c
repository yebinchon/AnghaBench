
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tBTA_STATUS ;


 scalar_t__ BTA_SUCCESS ;
 int BTC_MAIN_ENABLE_FUTURE ;
 int FUTURE_FAIL ;
 int FUTURE_SUCCESS ;
 int * btc_main_get_future_p (int ) ;
 int future_ready (int ,int ) ;

__attribute__((used)) static void btc_enable_bluetooth_evt(tBTA_STATUS status)
{
    if (status == BTA_SUCCESS) {
        future_ready(*btc_main_get_future_p(BTC_MAIN_ENABLE_FUTURE), FUTURE_SUCCESS);
    } else {
        future_ready(*btc_main_get_future_p(BTC_MAIN_ENABLE_FUTURE), FUTURE_FAIL);
    }
}
