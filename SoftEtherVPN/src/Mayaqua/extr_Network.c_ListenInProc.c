
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ListenMode; int Connected; int InProcAcceptEvent; int InProcAcceptQueue; int Type; } ;
typedef TYPE_1__ SOCK ;


 int NewEvent () ;
 int NewQueue () ;
 TYPE_1__* NewSock () ;
 int SOCK_INPROC ;

SOCK *ListenInProc()
{
 SOCK *s = NewSock();

 s->Type = SOCK_INPROC;
 s->ListenMode = 1;
 s->InProcAcceptQueue = NewQueue();
 s->InProcAcceptEvent = NewEvent();
 s->Connected = 1;

 return s;
}
