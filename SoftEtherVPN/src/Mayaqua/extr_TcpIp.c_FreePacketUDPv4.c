
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * UDPHeader; } ;
struct TYPE_6__ {int TypeL7; int TypeL4; TYPE_1__ L4; } ;
typedef TYPE_2__ PKT ;


 int FreePacketDHCPv4 (TYPE_2__*) ;
 int L4_UNKNOWN ;


void FreePacketUDPv4(PKT *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 switch (p->TypeL7)
 {
 case 128:
  FreePacketDHCPv4(p);
  break;
 }

 p->L4.UDPHeader = ((void*)0);
 p->TypeL4 = L4_UNKNOWN;
}
