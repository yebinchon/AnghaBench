
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int QueryDnsCacheEx (int *,char*,int) ;

bool QueryDnsCache(IP *ip, char *hostname)
{
 return QueryDnsCacheEx(ip, hostname, 0);
}
