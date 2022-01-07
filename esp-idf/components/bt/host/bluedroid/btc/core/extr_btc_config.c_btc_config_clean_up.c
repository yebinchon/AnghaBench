
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btc_config_flush () ;
 int * config ;
 int config_free (int *) ;
 int lock ;
 int osi_mutex_free (int *) ;

bool btc_config_clean_up(void)
{
    btc_config_flush();

    config_free(config);
    osi_mutex_free(&lock);
    config = ((void*)0);
    return 1;
}
