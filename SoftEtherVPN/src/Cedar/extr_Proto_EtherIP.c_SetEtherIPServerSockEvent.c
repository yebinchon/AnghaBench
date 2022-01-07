
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* SockEvent; } ;
struct TYPE_6__ {int ref; } ;
typedef TYPE_1__ SOCK_EVENT ;
typedef TYPE_2__ ETHERIP_SERVER ;


 int AddRef (int ) ;
 int ReleaseSockEvent (TYPE_1__*) ;

void SetEtherIPServerSockEvent(ETHERIP_SERVER *s, SOCK_EVENT *e)
{

 if (s == ((void*)0))
 {
  return;
 }

 if (e != ((void*)0))
 {
  AddRef(e->ref);
 }

 if (s->SockEvent != ((void*)0))
 {
  ReleaseSockEvent(s->SockEvent);
  s->SockEvent = ((void*)0);
 }

 s->SockEvent = e;
}
