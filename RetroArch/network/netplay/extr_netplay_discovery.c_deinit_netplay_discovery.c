
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lan_ad_client_fd ;
 int socket_close (int) ;

void deinit_netplay_discovery(void)
{
   if (lan_ad_client_fd >= 0)
   {
      socket_close(lan_ad_client_fd);
      lan_ad_client_fd = -1;
   }
}
