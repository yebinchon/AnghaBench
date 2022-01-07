
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t btc_pid_t ;


 size_t BTC_PID_NUM ;
 void** btc_profile_cb_tab ;

int btc_profile_cb_set(btc_pid_t profile_id, void *cb)
{
    if (profile_id < 0 || profile_id >= BTC_PID_NUM) {
        return -1;
    }

    btc_profile_cb_tab[profile_id] = cb;

    return 0;
}
