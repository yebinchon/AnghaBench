
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ref; } ;
struct TYPE_7__ {int LastCommTime; int LastRecvTime; int EstablishedTick; void* SendFifo; void* RecvFifo; TYPE_2__* Sock; } ;
typedef TYPE_1__ TCPSOCK ;
typedef TYPE_2__ SOCK ;


 int AddRef (int ) ;
 void* NewFifo () ;
 int SetTimeout (TYPE_2__*,int ) ;
 int TIMEOUT_INFINITE ;
 int Tick64 () ;
 TYPE_1__* ZeroMalloc (int) ;

TCPSOCK *NewTcpSock(SOCK *s)
{
 TCPSOCK *ts;

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 ts = ZeroMalloc(sizeof(TCPSOCK));

 ts->Sock = s;
 AddRef(s->ref);

 ts->RecvFifo = NewFifo();
 ts->SendFifo = NewFifo();
 ts->EstablishedTick = ts->LastRecvTime = ts->LastCommTime = Tick64();


 SetTimeout(s, TIMEOUT_INFINITE);

 return ts;
}
