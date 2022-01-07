
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t btc_pid_t ;


 size_t BTC_PID_NUM ;
 void** btc_profile_cb_tab ;

void *btc_profile_cb_get(btc_pid_t profile_id)
{
    if (profile_id < 0 || profile_id >= BTC_PID_NUM) {
        return ((void*)0);
    }

    return btc_profile_cb_tab[profile_id];
}
