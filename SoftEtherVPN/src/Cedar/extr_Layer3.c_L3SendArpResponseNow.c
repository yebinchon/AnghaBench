
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int arp ;
typedef void* UINT ;
typedef int UCHAR ;
struct TYPE_7__ {int HardwareSize; int ProtocolSize; void* TargetIP; void* SrcIP; int TargetAddress; int SrcAddress; void* Operation; void* ProtocolType; void* HardwareType; } ;
struct TYPE_6__ {int * MacAddress; } ;
typedef TYPE_1__ L3IF ;
typedef TYPE_2__ ARPV4_HEADER ;


 int ARP_HARDWARE_TYPE_ETHERNET ;
 int ARP_OPERATION_RESPONSE ;
 int Copy (int ,int *,int) ;
 void* Endian16 (int ) ;
 int L3SendL2Now (TYPE_1__*,int *,int *,int ,TYPE_2__*,int) ;
 int MAC_PROTO_ARPV4 ;
 int MAC_PROTO_IPV4 ;

void L3SendArpResponseNow(L3IF *f, UCHAR *dest_mac, UINT dest_ip, UINT src_ip)
{
 ARPV4_HEADER arp;

 if (f == ((void*)0) || dest_mac == ((void*)0))
 {
  return;
 }


 arp.HardwareType = Endian16(ARP_HARDWARE_TYPE_ETHERNET);
 arp.ProtocolType = Endian16(MAC_PROTO_IPV4);
 arp.HardwareSize = 6;
 arp.ProtocolSize = 4;
 arp.Operation = Endian16(ARP_OPERATION_RESPONSE);
 Copy(arp.SrcAddress, f->MacAddress, 6);
 Copy(arp.TargetAddress, dest_mac, 6);
 arp.SrcIP = src_ip;
 arp.TargetIP = dest_ip;


 L3SendL2Now(f, dest_mac, f->MacAddress, MAC_PROTO_ARPV4, &arp, sizeof(arp));
}
