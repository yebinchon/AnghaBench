
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSI_MUTEX_MAX_TIMEOUT ;
 int lock ;
 int osi_mutex_lock (int *,int ) ;

void btc_config_lock(void)
{
    osi_mutex_lock(&lock, OSI_MUTEX_MAX_TIMEOUT);
}
