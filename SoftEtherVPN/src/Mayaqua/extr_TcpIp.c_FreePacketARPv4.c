
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ARPv4Header; } ;
struct TYPE_5__ {int TypeL3; TYPE_1__ L3; } ;
typedef TYPE_2__ PKT ;


 int L3_UNKNOWN ;

void FreePacketARPv4(PKT *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 p->L3.ARPv4Header = ((void*)0);
 p->TypeL3 = L3_UNKNOWN;
}
