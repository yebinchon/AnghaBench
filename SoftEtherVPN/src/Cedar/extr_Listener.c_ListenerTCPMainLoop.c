
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_20__ {TYPE_1__* Server; } ;
struct TYPE_19__ {scalar_t__ Protocol; int ShadowIPv6; scalar_t__ Halt; int lock; TYPE_2__* Sock; void* Status; int Event; int Port; TYPE_6__* Cedar; int RandPortId; int * NatTGlobalUdpPort; int LocalOnly; int EnableConditionalAccept; } ;
struct TYPE_18__ {int ref; } ;
struct TYPE_17__ {int ListenIP; } ;
typedef TYPE_2__ SOCK ;
typedef TYPE_3__ LISTENER ;


 TYPE_2__* Accept (TYPE_2__*) ;
 int AddRef (int ) ;
 int Debug (char*) ;
 int Disconnect (TYPE_2__*) ;
 int IP_PROTO_ICMPV4 ;
 int IsIPv6Supported () ;
 scalar_t__ LISTENER_DNS ;
 scalar_t__ LISTENER_ICMP ;
 scalar_t__ LISTENER_INPROC ;
 scalar_t__ LISTENER_REVERSE ;
 scalar_t__ LISTENER_RUDP ;
 void* LISTENER_STATUS_LISTENING ;
 void* LISTENER_STATUS_TRYING ;
 scalar_t__ LISTENER_TCP ;
 int LISTEN_RETRY_TIME ;
 int LISTEN_RETRY_TIME_NOIPV6 ;
 TYPE_2__* ListenEx2 (int ,int ,int ,int *) ;
 TYPE_2__* ListenEx6 (int ,int ) ;
 TYPE_2__* ListenInProc () ;
 TYPE_2__* ListenRUDPEx (int ,int *,int ,int *,int,int,int,int *,int ,int *) ;
 TYPE_2__* ListenReverse () ;
 int ListenerRUDPRpcRecvProc ;
 int Lock (int ) ;
 int MAKE_SPECIAL_PORT (int ) ;
 int ReleaseSock (TYPE_2__*) ;
 int SLog (TYPE_6__*,char*,int ,...) ;
 int TCPAccepted (TYPE_3__*,TYPE_2__*) ;
 int Unlock (int ) ;
 int VPN_RUDP_SVC_NAME ;
 int Wait (int ,int) ;

void ListenerTCPMainLoop(LISTENER *r)
{
 SOCK *new_sock;
 SOCK *s;

 if (r == ((void*)0))
 {
  return;
 }

 Debug("ListenerTCPMainLoop Starts.\n");
 r->Status = LISTENER_STATUS_TRYING;

 while (1)
 {
  bool first_failed = 1;
  Debug("Status = LISTENER_STATUS_TRYING\n");
  r->Status = LISTENER_STATUS_TRYING;


  while (1)
  {
   UINT interval;

   if (r->Halt)
   {

    return;
   }

   s = ((void*)0);

   if (r->Protocol == LISTENER_TCP)
   {
    if (r->ShadowIPv6 == 0)
    {
     if (r->Cedar->Server == ((void*)0))
     {
      s = ListenEx2(r->Port, r->LocalOnly, r->EnableConditionalAccept, ((void*)0));
     }
     else
     {
      s = ListenEx2(r->Port, r->LocalOnly, r->EnableConditionalAccept, &r->Cedar->Server->ListenIP);
     }
    }
    else
    {
     s = ListenEx6(r->Port, r->LocalOnly);
    }
   }
   else if (r->Protocol == LISTENER_INPROC)
   {
    s = ListenInProc();
   }
   else if (r->Protocol == LISTENER_RUDP)
   {
    s = ListenRUDPEx(VPN_RUDP_SVC_NAME, ((void*)0), ListenerRUDPRpcRecvProc, ((void*)0), 0, 0, 0, r->NatTGlobalUdpPort, r->RandPortId, &r->Cedar->Server->ListenIP);
   }
   else if (r->Protocol == LISTENER_ICMP)
   {
    s = ListenRUDPEx(VPN_RUDP_SVC_NAME, ((void*)0), ListenerRUDPRpcRecvProc, ((void*)0), MAKE_SPECIAL_PORT(IP_PROTO_ICMPV4),
     1, 0, ((void*)0), 0, &r->Cedar->Server->ListenIP);
   }
   else if (r->Protocol == LISTENER_DNS)
   {
    s = ListenRUDPEx(VPN_RUDP_SVC_NAME, ((void*)0), ListenerRUDPRpcRecvProc, ((void*)0), 53, 1, 1, ((void*)0), 0, &r->Cedar->Server->ListenIP);
   }
   else if (r->Protocol == LISTENER_REVERSE)
   {
    s = ListenReverse();
   }

   if (s != ((void*)0))
   {

    AddRef(s->ref);

    Lock(r->lock);
    {
     r->Sock = s;
    }
    Unlock(r->lock);

    if (r->ShadowIPv6 == 0 && r->Protocol == LISTENER_TCP)
    {
     SLog(r->Cedar, "LS_LISTENER_START_2", r->Port);
    }
    break;
   }


   if (first_failed)
   {
    first_failed = 0;
    if (r->ShadowIPv6 == 0 && r->Protocol == LISTENER_TCP)
    {
     SLog(r->Cedar, "LS_LISTENER_START_3", r->Port, LISTEN_RETRY_TIME / 1000);
    }
   }

   interval = LISTEN_RETRY_TIME;

   if (r->ShadowIPv6)
   {
    if (IsIPv6Supported() == 0)
    {
     interval = LISTEN_RETRY_TIME_NOIPV6;

     Debug("IPv6 is not supported.\n");
    }
   }

   Wait(r->Event, interval);


   if (r->Halt)
   {

    Debug("Listener Halt.\n");
    return;
   }
  }

  r->Status = LISTENER_STATUS_LISTENING;
  Debug("Status = LISTENER_STATUS_LISTENING\n");


  if (r->Halt)
  {

   goto STOP;
  }


  while (1)
  {

   Debug("Accept()\n");
   new_sock = Accept(s);
   if (new_sock != ((void*)0))
   {

    Debug("Accepted.\n");
    TCPAccepted(r, new_sock);
    ReleaseSock(new_sock);
   }
   else
   {
STOP:
    Debug("Accept Canceled.\n");


    Disconnect(s);
    ReleaseSock(s);
    s = ((void*)0);

    Lock(r->lock);
    {
     if (r->Sock != ((void*)0))
     {
      s = r->Sock;
      r->Sock = ((void*)0);
     }
    }
    Unlock(r->lock);

    if (s != ((void*)0))
    {
     ReleaseSock(s);
    }

    s = ((void*)0);

    break;
   }
  }


  if (r->Halt)
  {

   Debug("Listener Halt.\n");
   return;
  }
 }
}
