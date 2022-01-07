
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int Size; int Buf; } ;
struct TYPE_14__ {TYPE_1__* SslPipe; } ;
struct TYPE_13__ {int Type; int Len; } ;
struct TYPE_12__ {int RecvFifo; } ;
struct TYPE_11__ {TYPE_2__* SslInOut; } ;
typedef TYPE_3__ EAP_MESSAGE ;
typedef TYPE_4__ EAP_CLIENT ;
typedef TYPE_5__ BUF ;


 int Copy (int *,int ,int ) ;
 int Endian16 (int) ;
 int FreeBuf (TYPE_5__*) ;
 int MIN (int,int) ;
 TYPE_5__* ReadFifoAll (int ) ;
 int Zero (TYPE_3__*,int) ;

bool GetRecvPeapMessage(EAP_CLIENT *e, EAP_MESSAGE *msg)
{
 BUF *b;
 bool ret = 0;
 if (e == ((void*)0))
 {
  return 0;
 }
 if (e->SslPipe == ((void*)0))
 {
  return 0;
 }

 b = ReadFifoAll(e->SslPipe->SslInOut->RecvFifo);

 if (b->Size >= 1)
 {
  Zero(msg, sizeof(EAP_MESSAGE));

  msg->Len = Endian16(b->Size + 4);
  Copy(&msg->Type, b->Buf, MIN(b->Size, 1501));

  ret = 1;
 }

 FreeBuf(b);

 return ret;
}
