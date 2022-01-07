
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int HostIP; } ;
typedef TYPE_1__ VH ;
typedef int UINT ;
struct TYPE_13__ {scalar_t__ num_item; } ;
struct TYPE_12__ {int Param1; int Size; int Buf; } ;
struct TYPE_11__ {int DestIp; int DestPort; int SrcPort; int SrcIp; TYPE_8__* UdpRecvQueue; } ;
typedef TYPE_2__ NAT_ENTRY ;
typedef TYPE_3__ BLOCK ;


 int FreeBlock (TYPE_3__*) ;
 TYPE_3__* GetNext (TYPE_8__*) ;
 int SendUdp (TYPE_1__*,int ,int ,int,int ,int ,int ) ;

void PoolingNatUdp(VH *v, NAT_ENTRY *n)
{

 if (v == ((void*)0) || n == ((void*)0))
 {
  return;
 }


 if (n->UdpRecvQueue->num_item != 0)
 {
  BLOCK *block;


  while (block = GetNext(n->UdpRecvQueue))
  {
   UINT src_ip = n->DestIp;

   if (src_ip == 0xFFFFFFFF)
   {
    src_ip = v->HostIP;
   }

   if (block->Param1 != 0)
   {
    src_ip = block->Param1;
   }

   SendUdp(v, n->SrcIp, n->SrcPort, src_ip, n->DestPort,
    block->Buf, block->Size);

   FreeBlock(block);
  }
 }
}
