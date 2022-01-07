
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {int IpAddress; } ;
typedef int IP ;
typedef TYPE_1__ DNSCACHE ;


 int Copy (int *,int *,int) ;
 TYPE_1__* FindDnsCache (char*) ;
 int GenDnsCacheKeyName (char*,int,char*,int) ;
 int MAX_SIZE ;

bool QueryDnsCacheEx(IP *ip, char *hostname, bool ipv6)
{
 DNSCACHE *c;
 char tmp[MAX_SIZE];

 if (ip == ((void*)0) || hostname == ((void*)0))
 {
  return 0;
 }

 GenDnsCacheKeyName(tmp, sizeof(tmp), hostname, ipv6);

 c = FindDnsCache(tmp);
 if (c == ((void*)0))
 {
  return 0;
 }

 Copy(ip, &c->IpAddress, sizeof(IP));

 return 1;
}
