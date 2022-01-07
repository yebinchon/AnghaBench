
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_mutex ;
 int platform_mutex_acquire (int *) ;

void platform_client_lock(void)
{
   platform_mutex_acquire(&client_mutex);
}
