
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ListenMode; int Connected; int ReverseAcceptEvent; int ReverseAcceptQueue; int Type; } ;
typedef TYPE_1__ SOCK ;


 int NewEvent () ;
 int NewQueue () ;
 TYPE_1__* NewSock () ;
 int SOCK_REVERSE_LISTEN ;

SOCK *ListenReverse()
{
 SOCK *s = NewSock();

 s->Type = SOCK_REVERSE_LISTEN;
 s->ListenMode = 1;
 s->ReverseAcceptQueue = NewQueue();
 s->ReverseAcceptEvent = NewEvent();
 s->Connected = 1;

 return s;
}
