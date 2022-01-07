
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * TCPHeader; } ;
struct TYPE_5__ {int TypeL4; TYPE_1__ L4; } ;
typedef TYPE_2__ PKT ;


 int L4_UNKNOWN ;

void FreePacketTCPv4(PKT *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 p->L4.TCPHeader = ((void*)0);
 p->TypeL4 = L4_UNKNOWN;
}
