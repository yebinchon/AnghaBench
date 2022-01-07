
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {void* s_addr; } ;
typedef scalar_t__ s32 ;


 int TRUE ;
 scalar_t__ if_configex (struct in_addr*,struct in_addr*,struct in_addr*,int,int) ;
 void* inet_addr (char*) ;
 int inet_ntoa (struct in_addr) ;
 int strcpy (char*,int ) ;

s32 if_config(char *local_ip, char *netmask, char *gateway,bool use_dhcp, int max_retries)
{
 s32 ret = 0;
 struct in_addr loc_ip, mask, gw;

 loc_ip.s_addr = 0;
 mask.s_addr = 0;
 gw.s_addr = 0;

 if ( local_ip != ((void*)0) ) loc_ip.s_addr = inet_addr(local_ip);
 if ( netmask != ((void*)0) ) mask.s_addr = inet_addr(netmask);
 if ( gateway != ((void*)0) ) gw.s_addr = inet_addr(gateway);

 ret = if_configex( &loc_ip, &mask, &gw, use_dhcp, max_retries);

 if (ret<0) return ret;

 if ( use_dhcp == TRUE ) {

  if ( local_ip != ((void*)0) ) strcpy(local_ip, inet_ntoa( loc_ip ));
  if ( netmask != ((void*)0) ) strcpy(netmask, inet_ntoa( mask));
  if ( gateway != ((void*)0) ) strcpy(gateway, inet_ntoa( gw ));
 }
 return ret;
}
