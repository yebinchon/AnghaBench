
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ LocalPort; scalar_t__ RemotePort; TYPE_1__* BulkRecvTube; TYPE_1__* BulkSendTube; } ;
struct TYPE_13__ {int Ref; } ;
typedef TYPE_1__ TUBE ;
typedef int TCP_PAIR_HEADER ;
typedef int SOCK_EVENT ;
typedef TYPE_2__ SOCK ;


 TYPE_2__* Accept (TYPE_2__*) ;
 int AddRef (int ) ;
 TYPE_2__* Connect (char*,scalar_t__) ;
 TYPE_2__* ListenAnyPortEx2 (int,int) ;
 int * NewSockEvent () ;
 int NewTubePair (TYPE_1__**,TYPE_1__**,int) ;
 int ReleaseSock (TYPE_2__*) ;
 int ReleaseSockEvent (int *) ;
 int SetTubeSockEvent (TYPE_1__*,int *) ;

bool NewTcpPair(SOCK **s1, SOCK **s2)
{
 SOCK *a;
 SOCK *s, *c;
 TUBE *t1, *t2;
 SOCK_EVENT *e1, *e2;

 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }

 a = ListenAnyPortEx2(1, 1);
 if (a == ((void*)0))
 {
  return 0;
 }

 c = Connect("127.0.0.1", a->LocalPort);
 if (c == ((void*)0))
 {
  ReleaseSock(a);
  return 0;
 }

 s = Accept(a);
 if (s == ((void*)0))
 {
  ReleaseSock(c);
  ReleaseSock(a);
  return 0;
 }

 ReleaseSock(a);

 if ((s->LocalPort != c->RemotePort) || (s->RemotePort != c->LocalPort))
 {
  ReleaseSock(s);
  ReleaseSock(c);
  return 0;
 }

 NewTubePair(&t1, &t2, sizeof(TCP_PAIR_HEADER));


 e1 = NewSockEvent();
 e2 = NewSockEvent();

 SetTubeSockEvent(t1, e1);
 SetTubeSockEvent(t2, e2);

 AddRef(t1->Ref);
 AddRef(t2->Ref);
 s->BulkRecvTube = c->BulkSendTube = t1;
 s->BulkSendTube = c->BulkRecvTube = t2;

 ReleaseSockEvent(e1);
 ReleaseSockEvent(e2);

 *s1 = s;
 *s2 = c;

 return 1;
}
