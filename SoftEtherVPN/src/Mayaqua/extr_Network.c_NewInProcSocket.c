
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Connected; int InProcRecvFifo; TYPE_1__* RecvTube; TYPE_1__* SendTube; int Type; } ;
struct TYPE_7__ {int Ref; } ;
typedef TYPE_1__ TUBE ;
typedef TYPE_2__ SOCK ;


 int AddRef (int ) ;
 int NewFifo () ;
 TYPE_2__* NewSock () ;
 int SOCK_INPROC ;

SOCK *NewInProcSocket(TUBE *tube_send, TUBE *tube_recv)
{
 SOCK *s;

 if (tube_recv == ((void*)0) || tube_send == ((void*)0))
 {
  return ((void*)0);
 }

 s = NewSock();

 s->Type = SOCK_INPROC;

 s->SendTube = tube_send;
 s->RecvTube = tube_recv;

 AddRef(tube_send->Ref);
 AddRef(tube_recv->Ref);

 s->InProcRecvFifo = NewFifo();

 s->Connected = 1;

 return s;
}
