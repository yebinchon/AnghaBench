
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VH ;
struct TYPE_4__ {int DnsPollingFlag; int DisconnectNow; scalar_t__ DnsFinished; } ;
typedef TYPE_1__ NAT_ENTRY ;


 int SendNatDnsResponse (int *,TYPE_1__*) ;

void PollingNatDns(VH *v, NAT_ENTRY *n)
{

 if (v == ((void*)0) || n == ((void*)0))
 {
  return;
 }

 if (n->DnsFinished)
 {
  if (n->DnsPollingFlag == 0)
  {
   n->DnsPollingFlag = 1;

   SendNatDnsResponse(v, n);


   n->DisconnectNow = 1;
  }
 }
}
