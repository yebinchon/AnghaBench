
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * DHCPv4Header; } ;
struct TYPE_5__ {int TypeL7; TYPE_1__ L7; } ;
typedef TYPE_2__ PKT ;


 int L7_UNKNOWN ;

void FreePacketDHCPv4(PKT *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 p->L7.DHCPv4Header = ((void*)0);
 p->TypeL7 = L7_UNKNOWN;
}
