
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {size_t SubnetMaskLen; int SubnetMask; int Network; scalar_t__ Exists; } ;
struct TYPE_5__ {scalar_t__ NumExistingRoutes; TYPE_2__* Entries; } ;
typedef int IP ;
typedef TYPE_1__ DHCP_CLASSLESS_ROUTE_TABLE ;
typedef TYPE_2__ DHCP_CLASSLESS_ROUTE ;


 scalar_t__ IsInSameNetwork4 (int *,int *,int *) ;
 size_t MAX_DHCP_CLASSLESS_ROUTE_ENTRIES ;

DHCP_CLASSLESS_ROUTE *GetBestClasslessRoute(DHCP_CLASSLESS_ROUTE_TABLE *t, IP *ip)
{
 DHCP_CLASSLESS_ROUTE *ret = ((void*)0);
 UINT i;
 UINT max_mask = 0;

 if (t == ((void*)0) || ip == ((void*)0))
 {
  return ((void*)0);
 }
 if (t->NumExistingRoutes == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < MAX_DHCP_CLASSLESS_ROUTE_ENTRIES;i++)
 {
  DHCP_CLASSLESS_ROUTE *e = &t->Entries[i];

  if (e->Exists)
  {
   if (IsInSameNetwork4(ip, &e->Network, &e->SubnetMask))
   {
    if (max_mask <= e->SubnetMaskLen)
    {
     max_mask = e->SubnetMaskLen;
     ret = e;
    }
   }
  }
 }

 return ret;
}
