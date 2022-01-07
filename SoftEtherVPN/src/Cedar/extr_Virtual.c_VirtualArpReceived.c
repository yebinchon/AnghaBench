
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VH ;
struct TYPE_9__ {int HardwareSize; int ProtocolSize; int Operation; int SrcAddress; int ProtocolType; int HardwareType; } ;
struct TYPE_7__ {TYPE_3__* ARPv4Header; } ;
struct TYPE_8__ {int MacAddressSrc; TYPE_1__ L3; } ;
typedef TYPE_2__ PKT ;
typedef TYPE_3__ ARPV4_HEADER ;


 int ARP_HARDWARE_TYPE_ETHERNET ;


 scalar_t__ Cmp (int ,int ,int) ;
 int Endian16 (int ) ;
 int MAC_PROTO_IPV4 ;
 int VirtualArpResponseReceived (int *,TYPE_2__*) ;
 int VirtualArpResponseRequest (int *,TYPE_2__*) ;

void VirtualArpReceived(VH *v, PKT *packet)
{
 ARPV4_HEADER *arp;

 if (v == ((void*)0) || packet == ((void*)0))
 {
  return;
 }

 arp = packet->L3.ARPv4Header;

 if (Endian16(arp->HardwareType) != ARP_HARDWARE_TYPE_ETHERNET)
 {

  return;
 }
 if (Endian16(arp->ProtocolType) != MAC_PROTO_IPV4)
 {

  return;
 }
 if (arp->HardwareSize != 6 || arp->ProtocolSize != 4)
 {

  return;
 }

 if (Cmp(arp->SrcAddress, packet->MacAddressSrc, 6) != 0)
 {

  return;
 }

 switch (Endian16(arp->Operation))
 {
 case 129:
  VirtualArpResponseRequest(v, packet);
  break;

 case 128:
  VirtualArpResponseReceived(v, packet);
  break;
 }
}
