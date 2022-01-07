
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int beacon_str ;
typedef int arp ;
struct TYPE_7__ {int HostIP; int HostMask; int MacAddress; } ;
typedef TYPE_1__ VH ;
typedef int UINT ;
struct TYPE_8__ {int HardwareSize; int ProtocolSize; int SrcIP; int* TargetAddress; int TargetIP; int SrcAddress; void* Operation; void* ProtocolType; void* HardwareType; } ;
typedef TYPE_2__ ARPV4_HEADER ;


 int ARP_HARDWARE_TYPE_ETHERNET ;
 int ARP_OPERATION_RESPONSE ;
 int Copy (int ,int ,int) ;
 void* Endian16 (int ) ;
 int MAC_PROTO_ARPV4 ;
 int MAC_PROTO_IPV4 ;
 int SendUdp (TYPE_1__*,int,int,int,int,char*,int) ;
 int VirtualLayer2Send (TYPE_1__*,int ,int ,int ,TYPE_2__*,int) ;
 int broadcast ;

void SendBeacon(VH *v)
{
 UINT dest_ip;
 ARPV4_HEADER arp;
 static char beacon_str[] =
  "SecureNAT Virtual TCP/IP Stack Beacon";

 if (v == ((void*)0))
 {
  return;
 }


 dest_ip = (v->HostIP & v->HostMask) | (~v->HostMask);
 SendUdp(v, dest_ip, 7, v->HostIP, 7, beacon_str, sizeof(beacon_str));


 arp.HardwareType = Endian16(ARP_HARDWARE_TYPE_ETHERNET);
 arp.ProtocolType = Endian16(MAC_PROTO_IPV4);
 arp.HardwareSize = 6;
 arp.ProtocolSize = 4;
 arp.Operation = Endian16(ARP_OPERATION_RESPONSE);
 Copy(arp.SrcAddress, v->MacAddress, 6);
 arp.SrcIP = v->HostIP;
 arp.TargetAddress[0] =
  arp.TargetAddress[1] =
  arp.TargetAddress[2] =
  arp.TargetAddress[3] =
  arp.TargetAddress[4] =
  arp.TargetAddress[5] = 0xff;
 arp.TargetIP = dest_ip;


 VirtualLayer2Send(v, broadcast, v->MacAddress, MAC_PROTO_ARPV4, &arp, sizeof(arp));
}
