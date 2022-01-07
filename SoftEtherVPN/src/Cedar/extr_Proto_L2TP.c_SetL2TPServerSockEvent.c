
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* SockEvent; } ;
struct TYPE_6__ {int ref; } ;
typedef TYPE_1__ SOCK_EVENT ;
typedef TYPE_2__ L2TP_SERVER ;


 int AddRef (int ) ;
 int ReleaseSockEvent (TYPE_1__*) ;

void SetL2TPServerSockEvent(L2TP_SERVER *l2tp, SOCK_EVENT *e)
{

 if (l2tp == ((void*)0))
 {
  return;
 }

 if (e != ((void*)0))
 {
  AddRef(e->ref);
 }

 if (l2tp->SockEvent != ((void*)0))
 {
  ReleaseSockEvent(l2tp->SockEvent);
  l2tp->SockEvent = ((void*)0);
 }

 l2tp->SockEvent = e;
}
