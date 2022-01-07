
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
typedef int UDPLISTENER_RECV_PROC ;
struct TYPE_5__ {int Thread; int Interrupts; void* SendPacketList; int * RecvProc; int ListenIP; int Event; void* PortList; int PacketType; void* Param; } ;
typedef TYPE_1__ UDPLISTENER ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int NewInterruptManager () ;
 void* NewList (int *) ;
 int NewSockEvent () ;
 int NewThread (int ,TYPE_1__*) ;
 int UdpListenerThread ;
 TYPE_1__* ZeroMalloc (int) ;

UDPLISTENER *NewUdpListenerEx(UDPLISTENER_RECV_PROC *recv_proc, void *param, IP *listen_ip, UINT packet_type)
{
 UDPLISTENER *u;

 if (recv_proc == ((void*)0))
 {
  return ((void*)0);
 }

 u = ZeroMalloc(sizeof(UDPLISTENER));

 u->Param = param;
 u->PacketType = packet_type;

 u->PortList = NewList(((void*)0));
 u->Event = NewSockEvent();

 if (listen_ip)
 {
  Copy(&u->ListenIP, listen_ip, sizeof(IP));
 }

 u->RecvProc = recv_proc;
 u->SendPacketList = NewList(((void*)0));

 u->Interrupts = NewInterruptManager();

 u->Thread = NewThread(UdpListenerThread, u);

 return u;
}
