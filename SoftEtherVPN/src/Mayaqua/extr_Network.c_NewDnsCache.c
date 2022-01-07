
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int IsIP6 (int *) ;
 int NewDnsCacheEx (char*,int *,int ) ;

void NewDnsCache(char *hostname, IP *ip)
{
 NewDnsCacheEx(hostname, ip, IsIP6(ip));
}
