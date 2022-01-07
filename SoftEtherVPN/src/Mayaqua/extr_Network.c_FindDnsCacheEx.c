
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_5__ {char* HostName; } ;
typedef TYPE_1__ DNSCACHE ;


 int DnsCache ;
 int GenDnsCacheKeyName (char*,int,char*,int) ;
 int LockDnsCache () ;
 int MAX_SIZE ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int UnlockDnsCache () ;

DNSCACHE *FindDnsCacheEx(char *hostname, bool ipv6)
{
 DNSCACHE *c;
 char tmp[MAX_SIZE];
 if (hostname == ((void*)0))
 {
  return ((void*)0);
 }

 GenDnsCacheKeyName(tmp, sizeof(tmp), hostname, ipv6);

 LockDnsCache();
 {
  DNSCACHE t;
  t.HostName = tmp;
  c = Search(DnsCache, &t);
 }
 UnlockDnsCache();

 return c;
}
