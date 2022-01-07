
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_6__ {char* HostName; int IpAddress; } ;
typedef int IP ;
typedef TYPE_1__ DNSCACHE ;


 int Add (int ,TYPE_1__*) ;
 int Copy (int *,int *,int) ;
 char* CopyStr (char*) ;
 int DnsCache ;
 int GenDnsCacheKeyName (char*,int,char*,int) ;
 int IsNetworkNameCacheEnabled () ;
 int LockDnsCache () ;
 int MAX_PATH ;
 TYPE_1__* Search (int ,TYPE_1__*) ;
 int UnlockDnsCache () ;
 TYPE_1__* ZeroMalloc (int) ;

void NewDnsCacheEx(char *hostname, IP *ip, bool ipv6)
{
 DNSCACHE *c;
 char tmp[MAX_PATH];

 if (hostname == ((void*)0) || ip == ((void*)0))
 {
  return;
 }

 if (IsNetworkNameCacheEnabled() == 0)
 {
  return;
 }

 GenDnsCacheKeyName(tmp, sizeof(tmp), hostname, ipv6);

 LockDnsCache();
 {
  DNSCACHE t;


  t.HostName = tmp;
  c = Search(DnsCache, &t);

  if (c == ((void*)0))
  {

   c = ZeroMalloc(sizeof(DNSCACHE));
   c->HostName = CopyStr(tmp);

   Copy(&c->IpAddress, ip, sizeof(IP));

   Add(DnsCache, c);
  }
  else
  {

   Copy(&c->IpAddress, ip, sizeof(IP));
  }
 }
 UnlockDnsCache();
}
