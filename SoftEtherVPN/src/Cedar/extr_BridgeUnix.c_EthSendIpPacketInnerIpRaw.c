
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
struct TYPE_5__ {int num_item; } ;
struct TYPE_4__ {void* RawIpYourMacAddr; void* RawIpMyMacAddr; TYPE_2__* RawIpSendQueue; } ;
typedef TYPE_1__ ETH ;
typedef int BUF ;


 int InsertQueue (TYPE_2__*,int *) ;
 int * NewBuf () ;
 int SeekBufToBegin (int *) ;
 int WriteBuf (int *,void*,int) ;
 int WriteBufShort (int *,int ) ;

void EthSendIpPacketInnerIpRaw(ETH *e, void *data, UINT size, USHORT protocol)
{
 BUF *b;
 if (e == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return;
 }

 if (e->RawIpSendQueue->num_item >= 1024)
 {
  return;
 }

 b = NewBuf();
 WriteBuf(b, e->RawIpYourMacAddr, 6);
 WriteBuf(b, e->RawIpMyMacAddr, 6);
 WriteBufShort(b, protocol);
 WriteBuf(b, data, size);
 SeekBufToBegin(b);

 InsertQueue(e->RawIpSendQueue, b);
}
