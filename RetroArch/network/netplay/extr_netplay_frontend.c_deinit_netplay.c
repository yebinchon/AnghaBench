
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int core_unset_netplay_callbacks () ;
 int is_mitm ;
 int * netplay_data ;
 int netplay_enabled ;
 int netplay_free (int *) ;
 int netplay_is_client ;

void deinit_netplay(void)
{
   if (netplay_data)
   {
      netplay_free(netplay_data);
      netplay_enabled = 0;
      netplay_is_client = 0;
      is_mitm = 0;
   }
   netplay_data = ((void*)0);
   core_unset_netplay_callbacks();
}
