
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int arp ;
typedef int UINT ;
struct TYPE_7__ {int HardwareSize; int ProtocolSize; int TargetIP; int TargetAddress; int SrcIP; int SrcAddress; void* Operation; void* ProtocolType; void* HardwareType; } ;
struct TYPE_6__ {int MacAddress; int IpAddress; } ;
typedef TYPE_1__ L3IF ;
typedef TYPE_2__ ARPV4_HEADER ;


 int ARP_HARDWARE_TYPE_ETHERNET ;
 int ARP_OPERATION_REQUEST ;
 int Copy (int ,int ,int) ;
 void* Endian16 (int ) ;
 int L3SendL2Now (TYPE_1__*,int ,int ,int ,TYPE_2__*,int) ;
 int MAC_PROTO_ARPV4 ;
 int MAC_PROTO_IPV4 ;
 int Zero (int *,int) ;
 int broadcast ;

void L3SendArpRequestNow(L3IF *f, UINT dest_ip)
{
 ARPV4_HEADER arp;

 if (f == ((void*)0))
 {
  return;
 }


 arp.HardwareType = Endian16(ARP_HARDWARE_TYPE_ETHERNET);
 arp.ProtocolType = Endian16(MAC_PROTO_IPV4);
 arp.HardwareSize = 6;
 arp.ProtocolSize = 4;
 arp.Operation = Endian16(ARP_OPERATION_REQUEST);
 Copy(arp.SrcAddress, f->MacAddress, 6);
 arp.SrcIP = f->IpAddress;
 Zero(&arp.TargetAddress, 6);
 arp.TargetIP = dest_ip;


 L3SendL2Now(f, broadcast, f->MacAddress, MAC_PROTO_ARPV4, &arp, sizeof(arp));
}
