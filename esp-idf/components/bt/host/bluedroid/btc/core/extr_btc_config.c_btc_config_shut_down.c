
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btc_config_flush () ;

bool btc_config_shut_down(void)
{
    btc_config_flush();
    return 1;
}
