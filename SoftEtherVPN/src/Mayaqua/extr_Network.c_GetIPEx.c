
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int GetIP4 (int *,char*) ;
 int GetIP6 (int *,char*) ;

bool GetIPEx(IP *ip, char *hostname, bool ipv6)
{
 if (ipv6 == 0)
 {
  return GetIP4(ip, hostname);
 }
 else
 {
  return GetIP6(ip, hostname);
 }
}
