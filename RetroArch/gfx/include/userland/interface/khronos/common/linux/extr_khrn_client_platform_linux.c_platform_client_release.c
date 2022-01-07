
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_mutex ;
 int platform_mutex_release (int *) ;

void platform_client_release(void)
{
   platform_mutex_release(&client_mutex);
}
