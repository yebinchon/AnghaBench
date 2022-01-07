
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DNSCACHE ;


 int * FindDnsCacheEx (char*,int) ;

DNSCACHE *FindDnsCache(char *hostname)
{
 return FindDnsCacheEx(hostname, 0);
}
