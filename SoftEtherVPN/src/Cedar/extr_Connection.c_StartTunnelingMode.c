
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


typedef int UINT64 ;
typedef int UINT ;
typedef int UDP ;
struct TYPE_20__ {int BufferQueue; int port; int ip; int * s; } ;
struct TYPE_19__ {scalar_t__ Protocol; int ServerMode; TYPE_6__* Udp; TYPE_12__* Session; int Cedar; TYPE_4__* FirstSock; TYPE_4__* TubeSock; scalar_t__ IsInProc; TYPE_3__* Tcp; } ;
struct TYPE_18__ {int RemoteIP; int ref; } ;
struct TYPE_17__ {int TcpSockList; } ;
struct TYPE_16__ {scalar_t__ DisconnectTick; } ;
struct TYPE_15__ {int ConnectionDisconnectSpan; int PortUDP; } ;
struct TYPE_14__ {TYPE_1__* ClientOption; } ;
typedef TYPE_2__ TCPSOCK ;
typedef TYPE_3__ TCP ;
typedef TYPE_4__ SOCK ;
typedef int IP ;
typedef TYPE_5__ CONNECTION ;


 int Add (int ,TYPE_2__*) ;
 int AddRef (int ) ;
 int AddUDPEntry (int ,TYPE_12__*) ;
 scalar_t__ CONNECTION_TCP ;
 int Copy (int *,int *,int) ;
 int Disconnect (TYPE_4__*) ;
 int LockList (int ) ;
 int NewQueue () ;
 TYPE_2__* NewTcpSock (TYPE_4__*) ;
 int * NewUDP (int ) ;
 int ReleaseSock (TYPE_4__*) ;
 scalar_t__ Tick64 () ;
 int UnlockList (int ) ;
 TYPE_6__* ZeroMalloc (int) ;

void StartTunnelingMode(CONNECTION *c)
{
 SOCK *s;
 TCP *tcp;
 TCPSOCK *ts;
 IP ip;
 UINT port;

 if (c == ((void*)0))
 {
  return;
 }

 tcp = c->Tcp;


 if (c->Protocol == CONNECTION_TCP)
 {

  s = c->FirstSock;

  if (c->IsInProc)
  {
   AddRef(s->ref);
   c->TubeSock = s;
  }

  ts = NewTcpSock(s);

  if (c->ServerMode == 0)
  {
   if (c->Session->ClientOption->ConnectionDisconnectSpan != 0)
   {
    ts->DisconnectTick = Tick64() + c->Session->ClientOption->ConnectionDisconnectSpan * (UINT64)1000;
   }
  }

  LockList(tcp->TcpSockList);
  {
   Add(tcp->TcpSockList, ts);
  }
  UnlockList(tcp->TcpSockList);
  ReleaseSock(s);
  c->FirstSock = ((void*)0);
 }
 else
 {

  s = c->FirstSock;
  Copy(&ip, &s->RemoteIP, sizeof(IP));

  c->FirstSock = ((void*)0);
  Disconnect(s);
  ReleaseSock(s);


  c->Udp = ZeroMalloc(sizeof(UDP));

  if (c->ServerMode)
  {


   AddUDPEntry(c->Cedar, c->Session);
   c->Udp->s = ((void*)0);
  }
  else
  {
   port = c->Session->ClientOption->PortUDP;

   c->Udp->s = NewUDP(0);

   Copy(&c->Udp->ip, &ip, sizeof(IP));
   c->Udp->port = port;
  }


  c->Udp->BufferQueue = NewQueue();
 }
}
