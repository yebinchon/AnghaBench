
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ LastDhcpPolling; scalar_t__ Now; int DhcpPendingLeaseList; int DhcpLeaseList; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ ExpireTime; } ;
typedef TYPE_2__ DHCP_LEASE ;


 scalar_t__ DHCP_POLLING_INTERVAL ;
 int Delete (int ,TYPE_2__*) ;
 int FreeDhcpLease (TYPE_2__*) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

void PollingDhcpServer(VH *v)
{
 UINT i;

 if (v == ((void*)0))
 {
  return;
 }

 if (v->LastDhcpPolling != 0)
 {
  if ((v->LastDhcpPolling + (UINT64)DHCP_POLLING_INTERVAL) > v->Now &&
   v->LastDhcpPolling < v->Now)
  {
   return;
  }
 }
 v->LastDhcpPolling = v->Now;

LIST_CLEANUP:
 for (i = 0; i < LIST_NUM(v->DhcpLeaseList); ++i)
 {
  DHCP_LEASE *d = LIST_DATA(v->DhcpLeaseList, i);

  if (d->ExpireTime < v->Now)
  {
   FreeDhcpLease(d);
   Delete(v->DhcpLeaseList, d);
   goto LIST_CLEANUP;
  }
 }

PENDING_LIST_CLEANUP:

 for (i = 0; i < LIST_NUM(v->DhcpPendingLeaseList); ++i)
 {
  DHCP_LEASE *d = LIST_DATA(v->DhcpPendingLeaseList, i);

  if (d->ExpireTime < v->Now)
  {
   FreeDhcpLease(d);
   Delete(v->DhcpPendingLeaseList, d);
   goto PENDING_LIST_CLEANUP;
  }
 }
}
