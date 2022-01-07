
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int HardwareSize; int ProtocolSize; int Operation; int SrcAddress; int ProtocolType; int HardwareType; } ;
struct TYPE_7__ {TYPE_3__* ARPv4Header; } ;
struct TYPE_8__ {int MacAddressSrc; TYPE_1__ L3; } ;
typedef TYPE_2__ PKT ;
typedef int L3IF ;
typedef TYPE_3__ ARPV4_HEADER ;


 int ARP_HARDWARE_TYPE_ETHERNET ;


 scalar_t__ Cmp (int ,int ,int) ;
 int Endian16 (int ) ;
 int L3RecvArpRequest (int *,TYPE_2__*) ;
 int L3RecvArpResponse (int *,TYPE_2__*) ;
 int MAC_PROTO_IPV4 ;

void L3RecvArp(L3IF *f, PKT *p)
{
 ARPV4_HEADER *a;

 if (f == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 a = p->L3.ARPv4Header;

 if (Endian16(a->HardwareType) != ARP_HARDWARE_TYPE_ETHERNET ||
  Endian16(a->ProtocolType) != MAC_PROTO_IPV4 ||
  a->HardwareSize != 6 || a->ProtocolSize != 4)
 {
  return;
 }
 if (Cmp(a->SrcAddress, p->MacAddressSrc, 6) != 0)
 {
  return;
 }

 switch (Endian16(a->Operation))
 {
 case 129:

  L3RecvArpRequest(f, p);
  break;

 case 128:

  L3RecvArpResponse(f, p);
  break;
 }
}
