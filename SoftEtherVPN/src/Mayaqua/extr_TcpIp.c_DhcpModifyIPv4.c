
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_18__ {scalar_t__ Checksum; } ;
typedef TYPE_4__ UDP_HEADER ;
typedef int UCHAR ;
struct TYPE_20__ {void* Buf; scalar_t__ Size; } ;
struct TYPE_17__ {TYPE_2__* IPv4Header; } ;
struct TYPE_15__ {TYPE_4__* UDPHeader; } ;
struct TYPE_19__ {scalar_t__ TypeL3; scalar_t__ TypeL4; scalar_t__ TypeL7; scalar_t__ PayloadSize; void* PacketData; scalar_t__ PacketSize; TYPE_3__ L3; TYPE_1__ L4; int Payload; } ;
struct TYPE_16__ {int DstIP; int SrcIP; } ;
typedef TYPE_5__ PKT ;
typedef int DHCP_MODIFY_OPTION ;
typedef TYPE_6__ BUF ;


 scalar_t__ CalcChecksumForIPv4 (int ,int ,int ,TYPE_4__*,scalar_t__,int ) ;
 TYPE_6__* DhcpModify (int *,int ,scalar_t__) ;
 int FreeBuf (TYPE_6__*) ;
 int FreePacket (TYPE_5__*) ;
 int IP_PROTO_UDP ;
 scalar_t__ L3_IPV4 ;
 scalar_t__ L4_UDP ;
 scalar_t__ L7_DHCPV4 ;
 TYPE_6__* NewBuf () ;
 TYPE_5__* ParsePacketEx4 (void*,scalar_t__,int,int ,int,int,int) ;
 int WriteBuf (TYPE_6__*,void*,scalar_t__) ;

BUF *DhcpModifyIPv4(DHCP_MODIFY_OPTION *m, void *data, UINT size)
{
 PKT *p;
 BUF *ret = ((void*)0);

 if (m == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return ((void*)0);
 }

 p = ParsePacketEx4(data, size, 0, 0, 0, 0, 0);

 if (p != ((void*)0) && p->TypeL3 == L3_IPV4 && p->TypeL4 == L4_UDP && p->TypeL7 == L7_DHCPV4)
 {
  BUF *new_buf = DhcpModify(m, p->Payload, p->PayloadSize);

  if (new_buf != ((void*)0))
  {
   ret = NewBuf();

   WriteBuf(ret, p->PacketData, p->PacketSize - p->PayloadSize);
   WriteBuf(ret, new_buf->Buf, new_buf->Size);

   FreeBuf(new_buf);
  }
 }

 FreePacket(p);

 if (ret != ((void*)0))
 {
  PKT *p = ParsePacketEx4(ret->Buf, ret->Size, 0, 0, 0, 0, 0);

  if (p != ((void*)0))
  {

   if (p->TypeL3 == L3_IPV4 && p->TypeL4 == L4_UDP)
   {
    UDP_HEADER *udp = p->L4.UDPHeader;

    udp->Checksum = 0;
    udp->Checksum = CalcChecksumForIPv4(p->L3.IPv4Header->SrcIP,
     p->L3.IPv4Header->DstIP,
     IP_PROTO_UDP,
     udp,
     p->PacketSize - (UINT)(((UCHAR *)udp) - ((UCHAR *)p->PacketData)), 0);
   }

   FreePacket(p);
  }
 }

 return ret;
}
