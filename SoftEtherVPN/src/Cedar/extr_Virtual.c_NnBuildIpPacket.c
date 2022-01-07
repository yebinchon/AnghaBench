
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int h ;
typedef scalar_t__ USHORT ;
typedef void* UINT ;
typedef void* UCHAR ;
struct TYPE_17__ {scalar_t__ Size; } ;
struct TYPE_16__ {int Checksum; void* DstIP; void* SrcIP; void* Protocol; void* TimeToLive; int Identification; int TotalLength; } ;
typedef TYPE_1__ IPV4_HEADER ;
typedef TYPE_2__ BUF ;


 int Endian16 (scalar_t__) ;
 int FreeBuf (TYPE_2__*) ;
 int IPV4_SET_HEADER_LEN (TYPE_1__*,int) ;
 int IPV4_SET_VERSION (TYPE_1__*,int) ;
 int IpChecksum (TYPE_1__*,int) ;
 TYPE_2__* NewBuf () ;
 int Rand16 () ;
 int SeekBufToBegin (TYPE_2__*) ;
 int WriteBuf (TYPE_2__*,TYPE_1__*,int) ;
 int WriteBufBuf (TYPE_2__*,TYPE_2__*) ;
 int Zero (TYPE_1__*,int) ;

BUF *NnBuildIpPacket(BUF *payload, UINT src_ip, UINT dst_ip, UCHAR protocol, UCHAR ttl)
{
 BUF *ret = NewBuf();
 IPV4_HEADER h;

 if (ttl == 0)
 {
  ttl = 127;
 }


 Zero(&h, sizeof(h));
 IPV4_SET_VERSION(&h, 4);
 IPV4_SET_HEADER_LEN(&h, sizeof(IPV4_HEADER) / 4);
 h.TotalLength = Endian16((USHORT)sizeof(IPV4_HEADER) + payload->Size);
 h.Identification = Rand16();
 h.TimeToLive = ttl;
 h.Protocol = protocol;
 h.SrcIP = src_ip;
 h.DstIP = dst_ip;

 h.Checksum = IpChecksum(&h, sizeof(h));

 WriteBuf(ret, &h, sizeof(h));
 WriteBufBuf(ret, payload);

 SeekBufToBegin(ret);

 FreeBuf(payload);

 return ret;
}
