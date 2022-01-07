
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * IPv4Header; } ;
struct TYPE_8__ {int TypeL4; int TypeL3; TYPE_1__ L3; } ;
typedef TYPE_2__ PKT ;


 int FreePacketICMPv4 (TYPE_2__*) ;
 int FreePacketTCPv4 (TYPE_2__*) ;
 int FreePacketUDPv4 (TYPE_2__*) ;
 int L3_UNKNOWN ;




void FreePacketIPv4(PKT *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 switch (p->TypeL4)
 {
 case 130:
  FreePacketICMPv4(p);
  break;

 case 129:
  FreePacketTCPv4(p);
  break;

 case 128:
  FreePacketUDPv4(p);
  break;
 }

 p->L3.IPv4Header = ((void*)0);
 p->TypeL3 = L3_UNKNOWN;
}
