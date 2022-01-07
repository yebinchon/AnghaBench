
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ip ;
typedef int UINT ;
typedef int UCHAR ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int IPToStr (char*,int ,int *) ;
 scalar_t__ IsIP6 (int *) ;
 int IsZeroIp (int *) ;
 int SetIP6 (int *,int *) ;
 int UINTToIP (int *,int ) ;
 int Zero (int *,int) ;

void IPToStr4or6(char *str, UINT size, UINT ip_4_uint, UCHAR *ip_6_bytes)
{
 IP ip4;
 IP ip6;
 IP ip;

 if (str == ((void*)0))
 {
  return;
 }

 Zero(&ip, sizeof(ip));

 UINTToIP(&ip4, ip_4_uint);
 SetIP6(&ip6, ip_6_bytes);

 if (IsIP6(&ip4) || (IsZeroIp(&ip4) && (IsZeroIp(&ip6) == 0)))
 {
  Copy(&ip, &ip6, sizeof(IP));
 }
 else
 {
  Copy(&ip, &ip4, sizeof(IP));
 }

 IPToStr(str, size, &ip);
}
