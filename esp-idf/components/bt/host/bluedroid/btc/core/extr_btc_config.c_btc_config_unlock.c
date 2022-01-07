
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lock ;
 int osi_mutex_unlock (int *) ;

void btc_config_unlock(void)
{
    osi_mutex_unlock(&lock);
}
