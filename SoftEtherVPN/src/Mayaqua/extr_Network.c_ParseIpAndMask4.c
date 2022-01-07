
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IPToUINT (int *) ;
 int IsIP4 (int *) ;
 int ParseIpAndMask46 (char*,int *,int *) ;

bool ParseIpAndMask4(char *src, UINT *ip, UINT *mask)
{
 IP ip_ip, ip_mask;
 if (ParseIpAndMask46(src, &ip_ip, &ip_mask) == 0)
 {
  return 0;
 }

 if (IsIP4(&ip_ip) == 0)
 {
  return 0;
 }

 if (ip != ((void*)0))
 {
  *ip = IPToUINT(&ip_ip);
 }

 if (mask != ((void*)0))
 {
  *mask = IPToUINT(&ip_mask);
 }

 return 1;
}
