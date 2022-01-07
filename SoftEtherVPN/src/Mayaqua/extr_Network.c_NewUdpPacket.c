
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ DestPort; int DstIP; scalar_t__ SrcPort; int SrcIP; scalar_t__ Size; void* Data; } ;
typedef TYPE_1__ UDPPACKET ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 TYPE_1__* ZeroMalloc (int) ;

UDPPACKET *NewUdpPacket(IP *src_ip, UINT src_port, IP *dst_ip, UINT dst_port, void *data, UINT size)
{
 UDPPACKET *p;

 if (data == ((void*)0) || size == 0 || dst_ip == ((void*)0) || dst_port == 0)
 {
  return ((void*)0);
 }

 p = ZeroMalloc(sizeof(UDPPACKET));

 p->Data = data;
 p->Size = size;

 Copy(&p->SrcIP, src_ip, sizeof(IP));
 p->SrcPort = src_port;

 Copy(&p->DstIP, dst_ip, sizeof(IP));
 p->DestPort = dst_port;

 return p;
}
