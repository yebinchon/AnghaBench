
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {int IsDisconnected; TYPE_2__* RawIn; TYPE_1__* RawOut; } ;
struct TYPE_17__ {int Size; int * Buf; } ;
struct TYPE_16__ {TYPE_6__* SslPipe; } ;
struct TYPE_15__ {scalar_t__ size; } ;
struct TYPE_14__ {TYPE_3__* SendFifo; } ;
struct TYPE_13__ {TYPE_3__* RecvFifo; } ;
typedef TYPE_3__ FIFO ;
typedef TYPE_4__ EAP_CLIENT ;
typedef TYPE_5__ BUF ;


 int FreeBuf (TYPE_5__*) ;
 TYPE_6__* NewSslPipe (int,int *,int *,int *) ;
 TYPE_5__* ReadFifoAll (TYPE_3__*) ;
 int SendPeapRawPacket (TYPE_4__*,int *,int ) ;
 int SyncSslPipe (TYPE_6__*) ;

bool StartPeapSslClient(EAP_CLIENT *e)
{
 bool ret = 0;
 FIFO *send_fifo;
 FIFO *recv_fifo;
 BUF *buf;
 if (e == ((void*)0))
 {
  return 0;
 }
 if (e->SslPipe != ((void*)0))
 {
  return 0;
 }

 e->SslPipe = NewSslPipe(0, ((void*)0), ((void*)0), ((void*)0));
 send_fifo = e->SslPipe->RawOut->RecvFifo;
 recv_fifo = e->SslPipe->RawIn->SendFifo;

 SyncSslPipe(e->SslPipe);

 buf = ReadFifoAll(send_fifo);

 while (1)
 {
  ret = SendPeapRawPacket(e, buf->Buf, buf->Size);
  FreeBuf(buf);

  if (send_fifo->size == 0)
  {
   break;
  }

  buf = ReadFifoAll(send_fifo);
 }

 SendPeapRawPacket(e, ((void*)0), 0);

 return !e->SslPipe->IsDisconnected;
}
