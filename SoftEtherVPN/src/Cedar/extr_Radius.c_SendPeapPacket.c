
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int tmpmsg ;
typedef scalar_t__ UINT ;
struct TYPE_23__ {int IsDisconnected; TYPE_3__* SslInOut; TYPE_2__* RawIn; TYPE_1__* RawOut; } ;
struct TYPE_22__ {int Size; int Buf; } ;
struct TYPE_21__ {TYPE_9__* SslPipe; } ;
struct TYPE_20__ {int Type; } ;
struct TYPE_19__ {scalar_t__ size; } ;
struct TYPE_18__ {int SendFifo; } ;
struct TYPE_17__ {TYPE_4__* SendFifo; } ;
struct TYPE_16__ {TYPE_4__* RecvFifo; } ;
typedef TYPE_4__ FIFO ;
typedef TYPE_5__ EAP_MESSAGE ;
typedef TYPE_6__ EAP_CLIENT ;
typedef TYPE_7__ BUF ;


 int Copy (TYPE_5__*,void*,int ) ;
 int FreeBuf (TYPE_7__*) ;
 int MIN (scalar_t__,int) ;
 TYPE_7__* ReadFifoAll (TYPE_4__*) ;
 int SendPeapRawPacket (TYPE_6__*,int ,int ) ;
 int SyncSslPipe (TYPE_9__*) ;
 int WriteFifo (int ,int *,scalar_t__) ;
 int Zero (TYPE_5__*,int) ;

bool SendPeapPacket(EAP_CLIENT *e, void *msg, UINT msg_size)
{
 bool ret = 0;
 FIFO *send_fifo;
 FIFO *recv_fifo;
 BUF *buf;
 EAP_MESSAGE tmpmsg;
 if (e == ((void*)0) || msg == ((void*)0) || msg_size == 0)
 {
  return 0;
 }
 if (e->SslPipe == ((void*)0))
 {
  return 0;
 }

 send_fifo = e->SslPipe->RawOut->RecvFifo;
 recv_fifo = e->SslPipe->RawIn->SendFifo;

 Zero(&tmpmsg, sizeof(tmpmsg));
 Copy(&tmpmsg, msg, MIN(msg_size, sizeof(EAP_MESSAGE)));

 WriteFifo(e->SslPipe->SslInOut->SendFifo, &tmpmsg.Type, msg_size - 4);

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

 return !e->SslPipe->IsDisconnected;
}
