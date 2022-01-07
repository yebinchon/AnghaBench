
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTC_MAIN_INIT_FUTURE ;
 int FUTURE_SUCCESS ;
 int * btc_main_get_future_p (int ) ;
 int future_ready (int ,int ) ;

void btc_init_callback(void)
{
    future_ready(*btc_main_get_future_p(BTC_MAIN_INIT_FUTURE), FUTURE_SUCCESS);
}
