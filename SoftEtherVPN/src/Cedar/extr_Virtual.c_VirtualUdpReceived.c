
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ HostIP; TYPE_1__* HubOption; int HostMask; } ;
typedef TYPE_2__ VH ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {int DstPort; int SrcPort; int PacketLength; } ;
typedef TYPE_3__ UDP_HEADER ;
typedef int UCHAR ;
struct TYPE_12__ {scalar_t__ DisableUserModeSecureNAT; } ;


 scalar_t__ Endian16 (int ) ;
 scalar_t__ Endian32 (int) ;
 scalar_t__ GetBroadcastAddress (scalar_t__,int ) ;
 int IsInNetwork (scalar_t__,scalar_t__,int ) ;
 int NnIsActive (TYPE_2__*) ;
 int NnUdpRecvForInternet (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__,scalar_t__) ;
 scalar_t__ SPECIAL_UDP_PORT_LLMNR ;
 scalar_t__ SPECIAL_UDP_PORT_NBTDGM ;
 scalar_t__ SPECIAL_UDP_PORT_NBTNS ;
 scalar_t__ SPECIAL_UDP_PORT_SSDP ;
 scalar_t__ SPECIAL_UDP_PORT_WSD ;
 scalar_t__ UDP_HEADER_SIZE ;
 int UdpRecvForBroadcast (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__) ;
 int UdpRecvForInternet (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__,int) ;
 int UdpRecvForMe (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__) ;
 int UdpRecvForNetBiosBroadcast (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__,int,int) ;
 int UdpRecvLlmnr (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,scalar_t__) ;

void VirtualUdpReceived(VH *v, UINT src_ip, UINT dest_ip, void *data, UINT size, bool mac_broadcast, bool is_localmac, UINT max_l3_size)
{
 UDP_HEADER *udp;
 UINT packet_length;
 void *buf;
 UINT buf_size;
 UINT src_port, dest_port;

 if (v == ((void*)0) || data == ((void*)0))
 {
  return;
 }


 udp = (UDP_HEADER *)data;
 if (size < UDP_HEADER_SIZE)
 {
  return;
 }
 packet_length = Endian16(udp->PacketLength);
 if (packet_length != size)
 {
  return;
 }
 buf = ((UCHAR *)data) + UDP_HEADER_SIZE;
 buf_size = size - UDP_HEADER_SIZE;
 src_port = Endian16(udp->SrcPort);
 dest_port = Endian16(udp->DstPort);

 if (dest_port == 0)
 {

  return;
 }


 if (dest_ip == v->HostIP)
 {

  UdpRecvForMe(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size);
 }
 else if ((mac_broadcast || dest_ip == Endian32(0xE00000FC)) && dest_port == SPECIAL_UDP_PORT_LLMNR)
 {
  if (is_localmac == 0)
  {

   UdpRecvLlmnr(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size);
  }
 }
 else if (mac_broadcast && (dest_port == SPECIAL_UDP_PORT_WSD || dest_port == SPECIAL_UDP_PORT_SSDP))
 {
  if (is_localmac == 0)
  {

   UdpRecvForInternet(v, src_ip, src_port, 0xFFFFFFFF, dest_port, buf, buf_size, 0);
  }
 }
 else if (mac_broadcast && (dest_port == SPECIAL_UDP_PORT_NBTDGM || dest_port == SPECIAL_UDP_PORT_NBTNS))
 {
  if (is_localmac == 0)
  {

   UdpRecvForNetBiosBroadcast(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size, 0, 0);
  }
 }
 else if (mac_broadcast || dest_ip == 0xffffffff || dest_ip == GetBroadcastAddress(v->HostIP, v->HostMask))
 {
  if (is_localmac == 0)
  {

   UdpRecvForBroadcast(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size);
  }
 }
 else if (IsInNetwork(dest_ip, v->HostIP, v->HostMask) == 0)
 {

  if (NnIsActive(v) == 0)
  {
   if (v->HubOption != ((void*)0) && v->HubOption->DisableUserModeSecureNAT)
   {

    return;
   }


   UdpRecvForInternet(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size, 0);
  }
  else
  {

   NnUdpRecvForInternet(v, src_ip, src_port, dest_ip, dest_port, buf, buf_size, max_l3_size);
  }
 }
 else
 {

 }
}
