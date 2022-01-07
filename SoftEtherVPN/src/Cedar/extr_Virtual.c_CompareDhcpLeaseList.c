
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int MacAddress; } ;
typedef TYPE_1__ DHCP_LEASE ;


 int Cmp (int ,int ,int) ;

int CompareDhcpLeaseList(void *p1, void *p2)
{
 DHCP_LEASE *d1, *d2;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 d1 = *(DHCP_LEASE **)p1;
 d2 = *(DHCP_LEASE **)p2;
 if (d1 == ((void*)0) || d2 == ((void*)0))
 {
  return 0;
 }

 return Cmp(d1->MacAddress, d2->MacAddress, 6);
}
