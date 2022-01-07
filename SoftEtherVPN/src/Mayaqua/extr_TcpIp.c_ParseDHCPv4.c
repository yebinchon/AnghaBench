
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int * DHCPv4Header; } ;
struct TYPE_5__ {int TypeL7; TYPE_1__ L7; } ;
typedef TYPE_2__ PKT ;
typedef int DHCPV4_HEADER ;


 int L7_DHCPV4 ;

void ParseDHCPv4(PKT *p, UCHAR *buf, UINT size)
{

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return;
 }


 if (size < sizeof(DHCPV4_HEADER))
 {

  return;
 }


 p->L7.DHCPv4Header = (DHCPV4_HEADER *)buf;
 p->TypeL7 = L7_DHCPV4;
}
