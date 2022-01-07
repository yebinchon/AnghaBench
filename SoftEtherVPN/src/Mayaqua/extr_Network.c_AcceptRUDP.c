
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Protocol; int NewSockConnectEvent; int NewSockQueue; } ;
struct TYPE_6__ {scalar_t__ Type; int ListenMode; int UnderlayProtocol; scalar_t__ CancelAccept; scalar_t__ Disconnecting; TYPE_2__* R_UDP_Stack; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ RUDP_STACK ;


 TYPE_1__* GetNextWithLock (int ) ;
 int INFINITE ;



 scalar_t__ SOCK_RUDP_LISTEN ;
 int SOCK_UNDERLAY_DNS ;
 int SOCK_UNDERLAY_ICMP ;
 int SOCK_UNDERLAY_NAT_T ;
 int StrCpy (int ,int,int ) ;
 int Wait (int ,int ) ;

SOCK *AcceptRUDP(SOCK *s)
{

 if (s == ((void*)0) || s->Type != SOCK_RUDP_LISTEN || s->ListenMode == 0)
 {
  return ((void*)0);
 }

 while (1)
 {
  RUDP_STACK *r = s->R_UDP_Stack;
  SOCK *ret;

  if (s->Disconnecting || s->CancelAccept)
  {
   return ((void*)0);
  }

  ret = GetNextWithLock(r->NewSockQueue);

  if (ret != ((void*)0))
  {
   switch (r->Protocol)
   {
   case 128:
    StrCpy(ret->UnderlayProtocol, sizeof(ret->UnderlayProtocol), SOCK_UNDERLAY_NAT_T);
    break;

   case 130:
    StrCpy(ret->UnderlayProtocol, sizeof(ret->UnderlayProtocol), SOCK_UNDERLAY_DNS);
    break;

   case 129:
    StrCpy(ret->UnderlayProtocol, sizeof(ret->UnderlayProtocol), SOCK_UNDERLAY_ICMP);
    break;
   }

   return ret;
  }

  Wait(r->NewSockConnectEvent, INFINITE);
 }
}
