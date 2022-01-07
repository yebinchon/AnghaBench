
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blehr_tx_timer ;
 int portTICK_PERIOD_MS ;
 int xTimerStop (int ,int) ;

__attribute__((used)) static void
blehr_tx_hrate_stop(void)
{
    xTimerStop( blehr_tx_timer, 1000 / portTICK_PERIOD_MS );
}
