
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DnsCache ;
 int LockList (int ) ;

void LockDnsCache()
{
 LockList(DnsCache);
}
