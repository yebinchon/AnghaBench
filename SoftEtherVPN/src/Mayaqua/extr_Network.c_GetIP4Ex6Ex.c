
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int GetIP4Ex6Ex2 (int *,char*,int ,int,int*,int) ;

bool GetIP4Ex6Ex(IP *ip, char *hostname_arg, UINT timeout, bool ipv6, bool *cancel)
{
 return GetIP4Ex6Ex2(ip, hostname_arg, timeout, ipv6, cancel, 0);
}
