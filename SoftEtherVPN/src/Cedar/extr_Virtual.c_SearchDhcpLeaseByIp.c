
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int DhcpLeaseList; } ;
typedef TYPE_1__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ IpAddress; } ;
typedef TYPE_2__ DHCP_LEASE ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

DHCP_LEASE *SearchDhcpLeaseByIp(VH *v, UINT ip)
{
 UINT i;

 if (v == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0; i < LIST_NUM(v->DhcpLeaseList); ++i)
 {
  DHCP_LEASE *d = LIST_DATA(v->DhcpLeaseList, i);
  if (d->IpAddress == ip)
  {
   return d;
  }
 }

 return ((void*)0);
}
