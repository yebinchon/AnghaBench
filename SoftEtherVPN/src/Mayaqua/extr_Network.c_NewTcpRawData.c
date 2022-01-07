
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {int Data; scalar_t__ DstPort; int DstIP; scalar_t__ SrcPort; int SrcIP; } ;
typedef TYPE_1__ TCP_RAW_DATA ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int NewFifoFast () ;
 TYPE_1__* ZeroMalloc (int) ;

TCP_RAW_DATA *NewTcpRawData(IP *src_ip, UINT src_port, IP *dst_ip, UINT dst_port)
{
 TCP_RAW_DATA *trd;

 if (dst_ip == ((void*)0) || dst_port == 0)
 {
  return ((void*)0);
 }

 trd = ZeroMalloc(sizeof(TCP_RAW_DATA));

 Copy(&trd->SrcIP, src_ip, sizeof(IP));
 trd->SrcPort = src_port;

 Copy(&trd->DstIP, dst_ip, sizeof(IP));
 trd->DstPort = dst_port;

 trd->Data = NewFifoFast();

 return trd;
}
