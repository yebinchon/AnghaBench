
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int* Buf; int Size; } ;
struct TYPE_5__ {int L2TPv3; int * Ipc; } ;
typedef TYPE_1__ ETHERIP_SERVER ;
typedef TYPE_2__ BLOCK ;


 int IPCSendL2 (int *,int*,int) ;

void EtherIPProcRecvPackets(ETHERIP_SERVER *s, BLOCK *b)
{
 UCHAR *src;
 UINT src_size;

 if (s == ((void*)0) || b == ((void*)0))
 {
  return;
 }

 if (s->Ipc == ((void*)0))
 {

  return;
 }

 src = b->Buf;
 src_size = b->Size;

 if (s->L2TPv3 == 0)
 {

  if (src_size < 2)
  {
   return;
  }

  if ((src[0] & 0xf0) != 0x30)
  {
   return;
  }

  src += 2;
  src_size -= 2;
 }

 if (src_size < 14)
 {

  return;
 }


 IPCSendL2(s->Ipc, src, src_size);
}
