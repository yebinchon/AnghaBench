
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * DhcpPendingLeaseList; int * DhcpLeaseList; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
typedef int DHCP_LEASE ;


 int FreeDhcpLease (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeDhcpServer(VH *v)
{
 UINT i;

 if (v == ((void*)0))
 {
  return;
 }


 for (i = 0; i < LIST_NUM(v->DhcpLeaseList); ++i)
 {
  DHCP_LEASE *d = LIST_DATA(v->DhcpLeaseList, i);
  FreeDhcpLease(d);
 }

 ReleaseList(v->DhcpLeaseList);
 v->DhcpLeaseList = ((void*)0);

 for (i = 0; i < LIST_NUM(v->DhcpPendingLeaseList); ++i)
 {
  DHCP_LEASE *d = LIST_DATA(v->DhcpPendingLeaseList, i);
  FreeDhcpLease(d);
 }

 ReleaseList(v->DhcpPendingLeaseList);
 v->DhcpPendingLeaseList = ((void*)0);
}
