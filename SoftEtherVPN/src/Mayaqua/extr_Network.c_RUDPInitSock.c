
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_24__ {TYPE_4__* TcpSock; TYPE_3__* BulkRecvKey; TYPE_2__* BulkSendKey; int YourPort; int YourIp; int MyPort; scalar_t__ DisconnectFlag; } ;
struct TYPE_23__ {int DoNotSetTargetConnectedSock; int Lock; int TargetConnectedEvent; int SockEvent; TYPE_4__* TargetConnectedSock; TYPE_1__* UdpSock; int NewSockConnectEvent; int NewSockQueue; scalar_t__ ServerMode; } ;
struct TYPE_22__ {int IpClientAdded; int IsRUDPSocket; TYPE_5__* R_UDP_Stack; void* RUDP_OptimizedMss; TYPE_3__* BulkRecvKey; TYPE_2__* BulkSendKey; int RemoteIP; int RemotePort; int LocalPort; int LocalIP; } ;
struct TYPE_21__ {int Ref; } ;
struct TYPE_20__ {int Ref; } ;
struct TYPE_19__ {int LocalIP; } ;
typedef TYPE_4__ SOCK ;
typedef TYPE_5__ RUDP_STACK ;
typedef TYPE_6__ RUDP_SESSION ;
typedef int IP ;


 int AddIpClient (int *) ;
 int AddRef (int ) ;
 int Copy (int *,int *,int) ;
 int Disconnect (TYPE_4__*) ;
 int InsertQueueWithLock (int ,TYPE_4__*) ;
 int IsLocalHostIP (int *) ;
 int JoinSockToSockEvent (TYPE_4__*,int ) ;
 int Lock (int ) ;
 int NewTcpPair (TYPE_4__**,TYPE_4__**) ;
 void* RUDPCalcBestMssForBulk (TYPE_5__*,TYPE_6__*) ;
 int RUDPDisconnectSession (TYPE_5__*,TYPE_6__*,int) ;
 int ReleaseSock (TYPE_4__*) ;
 int Set (int ) ;
 int Unlock (int ) ;
 int ZeroIP4 (int *) ;

void RUDPInitSock(RUDP_STACK *r, RUDP_SESSION *se)
{
 SOCK *s1, *s2;
 UINT mss;

 if (r == ((void*)0) || se == ((void*)0) || se->DisconnectFlag)
 {
  return;
 }

 if (se->TcpSock != ((void*)0))
 {

  return;
 }


 if (NewTcpPair(&s1, &s2) == 0)
 {

  RUDPDisconnectSession(r, se, 0);
  return;
 }


 mss = RUDPCalcBestMssForBulk(r, se);

 if (r->ServerMode)
 {

  se->TcpSock = s2;

  JoinSockToSockEvent(s2, r->SockEvent);


  ZeroIP4(&s1->LocalIP);
  s1->LocalPort = se->MyPort;
  Copy(&s1->RemoteIP, &se->YourIp, sizeof(IP));
  s1->RemotePort = se->YourPort;
  if (IsLocalHostIP(&s1->RemoteIP) == 0)
  {
   AddIpClient(&s1->RemoteIP);
   s1->IpClientAdded = 1;
  }
  s1->IsRUDPSocket = 1;

  s1->BulkSendKey = se->BulkSendKey;
  s1->BulkRecvKey = se->BulkRecvKey;

  AddRef(s1->BulkSendKey->Ref);
  AddRef(s1->BulkRecvKey->Ref);

  s1->RUDP_OptimizedMss = mss;


  InsertQueueWithLock(r->NewSockQueue, s1);
  Set(r->NewSockConnectEvent);
 }
 else
 {

  Lock(r->Lock);
  {
   if (r->TargetConnectedSock == ((void*)0) && r->DoNotSetTargetConnectedSock == 0)
   {

    Copy(&s2->LocalIP, &r->UdpSock->LocalIP, sizeof(IP));
    s2->LocalPort = se->MyPort;
    Copy(&s2->RemoteIP, &se->YourIp, sizeof(IP));
    s2->RemotePort = se->YourPort;
    if (IsLocalHostIP(&s2->RemoteIP) == 0)
    {
     AddIpClient(&s2->RemoteIP);
     s2->IpClientAdded = 1;
    }
    s2->IsRUDPSocket = 1;

    s2->BulkSendKey = se->BulkSendKey;
    s2->BulkRecvKey = se->BulkRecvKey;

    AddRef(s2->BulkSendKey->Ref);
    AddRef(s2->BulkRecvKey->Ref);

    s2->RUDP_OptimizedMss = mss;


    r->TargetConnectedSock = s2;
    s2->R_UDP_Stack = r;
    se->TcpSock = s1;

    JoinSockToSockEvent(s1, r->SockEvent);


    Set(r->TargetConnectedEvent);
   }
   else
   {
    Disconnect(s1);
    Disconnect(s2);
    ReleaseSock(s1);
    ReleaseSock(s2);
   }
  }
  Unlock(r->Lock);
 }
}
