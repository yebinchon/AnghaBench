
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_24__ {int OpCode; } ;
struct TYPE_21__ {TYPE_5__* TCPHeader; } ;
struct TYPE_20__ {TYPE_2__* BpduHeader; } ;
struct TYPE_23__ {int* PacketData; scalar_t__ TypeL3; scalar_t__ TypeL4; int PayloadSize; scalar_t__ TypeL7; int DhcpOpCode; int HttpLog; TYPE_4__ L4; TYPE_3__ L3; int MacAddressSrc; TYPE_1__* MacHeader; int MacAddressDest; scalar_t__ PacketSize; scalar_t__ VlanTypeID; } ;
struct TYPE_22__ {int DstPort; int Flag; } ;
struct TYPE_19__ {int BridgeMacAddress; } ;
struct TYPE_18__ {int DestAddress; int SrcAddress; } ;
typedef TYPE_5__ TCP_HEADER ;
typedef TYPE_6__ PKT ;
typedef TYPE_7__ DHCPV4_DATA ;


 int CorrectChecksum (TYPE_6__*) ;
 int Endian16 (int) ;
 int FreeDHCPv4Data (TYPE_7__*) ;
 int FreePacket (TYPE_6__*) ;
 scalar_t__ L3_BPDU ;
 scalar_t__ L3_IPV4 ;
 scalar_t__ L3_IPV6 ;
 scalar_t__ L4_TCP ;
 scalar_t__ L4_UDP ;
 scalar_t__ L7_DHCPV4 ;
 scalar_t__ MAC_PROTO_TAGVLAN ;
 TYPE_7__* ParseDHCPv4Data (TYPE_6__*) ;
 int ParseHttpAccessLog (TYPE_6__*) ;
 int ParseHttpsAccessLog (TYPE_6__*) ;
 int ParsePacketL2Ex (TYPE_6__*,int*,scalar_t__,int) ;
 int READ_USHORT (int*) ;
 int TCP_FIN ;
 int TCP_RST ;
 int TCP_SYN ;
 TYPE_6__* ZeroMallocFast (int) ;

PKT *ParsePacketEx4(UCHAR *buf, UINT size, bool no_l3, UINT vlan_type_id, bool bridge_id_as_mac_address, bool no_http, bool correct_checksum)
{
 PKT *p;
 USHORT vlan_type_id_16;

 if (buf == ((void*)0) || size == 0)
 {
  return ((void*)0);
 }

 if (vlan_type_id == 0)
 {
  vlan_type_id = MAC_PROTO_TAGVLAN;
 }

 vlan_type_id_16 = Endian16((USHORT)vlan_type_id);

 p = ZeroMallocFast(sizeof(PKT));

 p->VlanTypeID = vlan_type_id;


 if (size >= 24)
 {
  if (buf[12] == 0x08 && buf[13] == 0x00)
  {
   USHORT ip_total_size2 = READ_USHORT(&buf[16]);
   UINT mac_packet_size;

   if (ip_total_size2 >= 1)
   {
    mac_packet_size = (UINT)ip_total_size2 + 14;

    if (size > mac_packet_size)
    {
     size = mac_packet_size;
    }
   }
  }
  else if (buf[12] == 0x86 && buf[13] == 0xdd)
  {
   USHORT ip_payload_size_2 = READ_USHORT(&buf[18]);
   UINT mac_packet_size;

   if (ip_payload_size_2 >= 1)
   {
    mac_packet_size = (UINT)ip_payload_size_2 + 14 + 40;

    if (size > mac_packet_size)
    {
     size = mac_packet_size;
    }
   }
  }
  else if (buf[12] == ((UCHAR *)&vlan_type_id_16)[0] && buf[13] == ((UCHAR *)&vlan_type_id_16)[1])
  {
   if (buf[16] == 0x08 && buf[17] == 0x00)
   {
    USHORT ip_total_size2 = READ_USHORT(&buf[20]);
    UINT mac_packet_size;

    if (ip_total_size2 >= 1)
    {
     mac_packet_size = (UINT)ip_total_size2 + 14 + 4;

     if (size > mac_packet_size)
     {
      size = mac_packet_size;
     }
    }
   }
   else if (buf[16] == 0x86 && buf[17] == 0xdd)
   {
    USHORT ip_payload_size_2 = READ_USHORT(&buf[22]);
    UINT mac_packet_size;

    if (ip_payload_size_2 >= 1)
    {
     mac_packet_size = (UINT)ip_payload_size_2 + 14 + 40 + 4;

     if (size > mac_packet_size)
     {
      size = mac_packet_size;
     }
    }
   }
  }
 }


 if (ParsePacketL2Ex(p, buf, size, no_l3) == 0)
 {

  FreePacket(p);
  return ((void*)0);
 }

 p->PacketData = buf;
 p->PacketSize = size;

 p->MacAddressSrc = p->MacHeader->SrcAddress;
 p->MacAddressDest = p->MacHeader->DestAddress;

 if (bridge_id_as_mac_address)
 {
  if (p->TypeL3 == L3_BPDU)
  {
   if (p->L3.BpduHeader != ((void*)0))
   {
    p->MacAddressSrc = p->L3.BpduHeader->BridgeMacAddress;
   }
  }
 }

 if (no_http == 0)
 {
  USHORT port_raw = Endian16(80);
  USHORT port_raw2 = Endian16(8080);
  USHORT port_raw3 = Endian16(443);
  USHORT port_raw4 = Endian16(3128);


  if ((p->TypeL3 == L3_IPV4 || p->TypeL3 == L3_IPV6) && p->TypeL4 == L4_TCP)
  {
   TCP_HEADER *tcp = p->L4.TCPHeader;
   if (tcp != ((void*)0) && (tcp->DstPort == port_raw || tcp->DstPort == port_raw2 || tcp->DstPort == port_raw4) &&
    (!((tcp->Flag & TCP_SYN) || (tcp->Flag & TCP_RST) || (tcp->Flag & TCP_FIN))))
   {
    if (p->PayloadSize >= 1)
    {
     p->HttpLog = ParseHttpAccessLog(p);
    }
   }
   if (tcp != ((void*)0) && tcp->DstPort == port_raw3 &&
    (!((tcp->Flag & TCP_SYN) || (tcp->Flag & TCP_RST) || (tcp->Flag & TCP_FIN))))
   {
    if (p->PayloadSize >= 1)
    {
     p->HttpLog = ParseHttpsAccessLog(p);
    }
   }
  }
 }

 if (p->TypeL3 == L3_IPV4 && p->TypeL4 == L4_UDP && p->TypeL7 == L7_DHCPV4)
 {

  DHCPV4_DATA *d = ParseDHCPv4Data(p);

  if (d != ((void*)0))
  {
   p->DhcpOpCode = d->OpCode;

   FreeDHCPv4Data(d);
  }
 }

 if (correct_checksum)
 {

  CorrectChecksum(p);
 }


 return p;
}
