
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int DhcpLeaseList; } ;
typedef TYPE_1__ VH ;
typedef int UCHAR ;
struct TYPE_8__ {int MacAddress; } ;
typedef TYPE_2__ DHCP_LEASE ;


 int Copy (int *,int *,int) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;

DHCP_LEASE *SearchDhcpLeaseByMac(VH *v, UCHAR *mac)
{
 DHCP_LEASE *d, t;

 if (v == ((void*)0) || mac == ((void*)0))
 {
  return ((void*)0);
 }

 Copy(&t.MacAddress, mac, 6);
 d = Search(v->DhcpLeaseList, &t);

 return d;
}
