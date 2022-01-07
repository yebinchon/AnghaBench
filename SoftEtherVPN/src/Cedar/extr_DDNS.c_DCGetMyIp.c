
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int IP ;
typedef int DDNS_CLIENT ;


 scalar_t__ DCGetMyIpMain (int *,int,char*,scalar_t__,int,char*) ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ IsIP4 (int *) ;
 scalar_t__ IsIP6 (int *) ;
 int SetCurrentGlobalIP (int *,int) ;
 scalar_t__ StrToIP (int *,char*) ;

UINT DCGetMyIp(DDNS_CLIENT *c, bool ipv6, char *dst, UINT dst_size, char *replace_v6)
{
 UINT ret = ERR_INTERNAL_ERROR;

 ret = DCGetMyIpMain(c, ipv6, dst, dst_size, 0, replace_v6);


 if (ret == ERR_NO_ERROR)
 {
  IP ip;

  if (StrToIP(&ip, dst))
  {
   if (ipv6 == 0 && IsIP4(&ip))
   {
    SetCurrentGlobalIP(&ip, 0);
   }
   else if (ipv6 && IsIP6(&ip))
   {
    SetCurrentGlobalIP(&ip, 1);
   }
  }
 }

 return ret;
}
