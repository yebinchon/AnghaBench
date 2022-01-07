
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTC_PID_NUM ;
 int ** btc_profile_cb_tab ;

void esp_profile_cb_reset(void)
{
    int i;

    for (i = 0; i < BTC_PID_NUM; i++) {
        btc_profile_cb_tab[i] = ((void*)0);
    }
}
