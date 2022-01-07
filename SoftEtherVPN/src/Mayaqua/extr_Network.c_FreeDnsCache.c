
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {struct TYPE_4__* HostName; } ;
typedef TYPE_1__ DNSCACHE ;


 int * DnsCache ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockDnsCache () ;
 int ReleaseList (int *) ;
 int UnlockDnsCache () ;

void FreeDnsCache()
{
 LockDnsCache();
 {
  DNSCACHE *c;
  UINT i;
  for (i = 0;i < LIST_NUM(DnsCache);i++)
  {

   c = LIST_DATA(DnsCache, i);
   Free(c->HostName);
   Free(c);
  }
 }
 UnlockDnsCache();


 ReleaseList(DnsCache);
 DnsCache = ((void*)0);
}
