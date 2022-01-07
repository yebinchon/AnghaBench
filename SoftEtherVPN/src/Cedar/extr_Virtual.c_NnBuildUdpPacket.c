
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int ph ;
typedef int h ;
typedef scalar_t__ USHORT ;
typedef void* UINT ;
struct TYPE_15__ {int Checksum; void* PacketLength; void* DstPort; void* SrcPort; void* PacketLength2; void* PacketLength1; int Protocol; void* DstIP; void* SrcIP; } ;
typedef TYPE_1__ UDP_HEADER ;
typedef TYPE_1__ UDPV4_PSEUDO_HEADER ;
struct TYPE_16__ {int Size; TYPE_1__* Buf; } ;
typedef TYPE_3__ BUF ;


 void* Endian16 (scalar_t__) ;
 int FreeBuf (TYPE_3__*) ;
 int IP_PROTO_UDP ;
 int IpChecksum (TYPE_1__*,int) ;
 TYPE_3__* NewBuf () ;
 int SeekBufToBegin (TYPE_3__*) ;
 int WriteBuf (TYPE_3__*,TYPE_1__*,int) ;
 int WriteBufBuf (TYPE_3__*,TYPE_3__*) ;
 int Zero (TYPE_1__*,int) ;

BUF *NnBuildUdpPacket(BUF *payload, UINT src_ip, USHORT src_port, UINT dst_ip, USHORT dst_port)
{
 BUF *ret = NewBuf();
 BUF *phbuf = NewBuf();
 UDPV4_PSEUDO_HEADER ph;
 UDP_HEADER h;


 Zero(&ph, sizeof(ph));

 ph.SrcIP = src_ip;
 ph.DstIP = dst_ip;
 ph.SrcPort = Endian16(src_port);
 ph.DstPort = Endian16(dst_port);
 ph.Protocol = IP_PROTO_UDP;
 ph.PacketLength1 = ph.PacketLength2 = Endian16(payload->Size + (USHORT)sizeof(UDP_HEADER));

 WriteBuf(phbuf, &ph, sizeof(ph));
 WriteBufBuf(phbuf, payload);


 Zero(&h, sizeof(h));
 h.SrcPort = Endian16(src_port);
 h.DstPort = Endian16(dst_port);
 h.PacketLength = Endian16(payload->Size + (USHORT)sizeof(UDP_HEADER));
 h.Checksum = IpChecksum(phbuf->Buf, phbuf->Size);

 WriteBuf(ret, &h, sizeof(h));
 WriteBuf(ret, payload->Buf, payload->Size);

 SeekBufToBegin(ret);

 FreeBuf(payload);
 FreeBuf(phbuf);

 return ret;
}
