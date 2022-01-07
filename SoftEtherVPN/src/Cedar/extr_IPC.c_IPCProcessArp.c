
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tmp ;
typedef int UCHAR ;
struct TYPE_10__ {scalar_t__ HardwareType; scalar_t__ ProtocolType; int HardwareSize; int ProtocolSize; void* TargetIP; int * TargetAddress; void* SrcIP; int * SrcAddress; scalar_t__ Operation; } ;
struct TYPE_9__ {int Size; int * Buf; } ;
struct TYPE_8__ {int ClientIPAddress; int * MacAddress; } ;
typedef TYPE_1__ IPC ;
typedef int IP ;
typedef TYPE_2__ BLOCK ;
typedef TYPE_3__ ARPV4_HEADER ;


 scalar_t__ ARP_HARDWARE_TYPE_ETHERNET ;
 scalar_t__ ARP_OPERATION_REQUEST ;
 scalar_t__ ARP_OPERATION_RESPONSE ;
 scalar_t__ CmpIpAddr (int *,int *) ;
 int Copy (int *,int *,int) ;
 scalar_t__ Endian16 (scalar_t__) ;
 int IPCAssociateOnArpTable (TYPE_1__*,int *,int *) ;
 int IPCSendL2 (TYPE_1__*,int *,int) ;
 void* IPToUINT (int *) ;
 scalar_t__ IsValidUnicastMacAddress (int *) ;
 int MAC_PROTO_ARPV4 ;
 scalar_t__ MAC_PROTO_IPV4 ;
 int UINTToIP (int *,void*) ;
 int WRITE_USHORT (int *,int ) ;

void IPCProcessArp(IPC *ipc, BLOCK *b)
{
 UCHAR *dest_mac;
 UCHAR *src_mac;
 ARPV4_HEADER *arp;
 UCHAR *sender_mac;
 IP sender_ip;
 UCHAR *target_mac;
 IP target_ip;

 if (ipc == ((void*)0) || b == ((void*)0) || b->Size < (14 + sizeof(ARPV4_HEADER)))
 {
  return;
 }

 dest_mac = b->Buf + 0;
 src_mac = b->Buf + 6;

 arp = (ARPV4_HEADER *)(b->Buf + 14);

 if (arp->HardwareType != Endian16(ARP_HARDWARE_TYPE_ETHERNET))
 {
  return;
 }
 if (arp->ProtocolType != Endian16(MAC_PROTO_IPV4))
 {
  return;
 }
 if (arp->HardwareSize != 6 || arp->ProtocolSize != 4)
 {
  return;
 }

 sender_mac = arp->SrcAddress;
 UINTToIP(&sender_ip, arp->SrcIP);

 target_mac = arp->TargetAddress;
 UINTToIP(&target_ip, arp->TargetIP);

 if (CmpIpAddr(&sender_ip, &ipc->ClientIPAddress) == 0)
 {

  return;
 }

 IPCAssociateOnArpTable(ipc, &sender_ip, sender_mac);
 IPCAssociateOnArpTable(ipc, &target_ip, target_mac);

 if (Endian16(arp->Operation) == ARP_OPERATION_REQUEST)
 {

  if (CmpIpAddr(&target_ip, &ipc->ClientIPAddress) == 0)
  {

   if (IsValidUnicastMacAddress(sender_mac))
   {
    UCHAR tmp[14 + sizeof(ARPV4_HEADER)];
    ARPV4_HEADER *arp = (ARPV4_HEADER *)(tmp + 14);

    Copy(tmp + 0, sender_mac, 6);
    Copy(tmp + 6, ipc->MacAddress, 6);
    WRITE_USHORT(tmp + 12, MAC_PROTO_ARPV4);

    arp->HardwareType = Endian16(ARP_HARDWARE_TYPE_ETHERNET);
    arp->ProtocolType = Endian16(MAC_PROTO_IPV4);
    arp->HardwareSize = 6;
    arp->ProtocolSize = 4;
    arp->Operation = Endian16(ARP_OPERATION_RESPONSE);

    Copy(arp->SrcAddress, ipc->MacAddress, 6);
    arp->SrcIP = IPToUINT(&ipc->ClientIPAddress);

    Copy(arp->TargetAddress, sender_mac, 6);
    arp->TargetIP = IPToUINT(&sender_ip);

    IPCSendL2(ipc, tmp, sizeof(tmp));
   }
  }
 }
}
