
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int NextSessionId; int Dh; int Now; void* SendPacketList; void* RecvPacketList; int SessionList; int * SockEvent; int * Interrupt; int * Cedar; } ;
typedef int SOCK_EVENT ;
typedef TYPE_1__ OPENVPN_SERVER ;
typedef int INTERRUPT_MANAGER ;
typedef int CEDAR ;


 int DH_PARAM_BITS_DEFAULT ;
 int DhNewFromBits (int ) ;
 int NewList (int ) ;
 void* NewListFast (int *) ;
 int OvsCompareSessionList ;
 int OvsLog (TYPE_1__*,int *,int *,char*) ;
 int Tick64 () ;
 TYPE_1__* ZeroMalloc (int) ;

OPENVPN_SERVER *NewOpenVpnServer(CEDAR *cedar, INTERRUPT_MANAGER *interrupt, SOCK_EVENT *sock_event)
{
 OPENVPN_SERVER *s;

 if (cedar == ((void*)0))
 {
  return ((void*)0);
 }

 s = ZeroMalloc(sizeof(OPENVPN_SERVER));

 s->Cedar = cedar;
 s->Interrupt = interrupt;
 s->SockEvent = sock_event;

 s->SessionList = NewList(OvsCompareSessionList);
 s->RecvPacketList = NewListFast(((void*)0));
 s->SendPacketList = NewListFast(((void*)0));

 s->Now = Tick64();

 s->NextSessionId = 1;

 OvsLog(s, ((void*)0), ((void*)0), "LO_START");

 s->Dh = DhNewFromBits(DH_PARAM_BITS_DEFAULT);

 return s;
}
