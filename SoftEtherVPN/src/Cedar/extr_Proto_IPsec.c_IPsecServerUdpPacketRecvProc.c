
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef void* UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_15__ {scalar_t__ Type; scalar_t__ SrcPort; int Size; void* Data; } ;
typedef TYPE_1__ UDPPACKET ;
struct TYPE_16__ {int HostIPAddressListChanged; int Event; int * Interrupts; scalar_t__ Param; } ;
typedef TYPE_2__ UDPLISTENER ;
typedef int UCHAR ;
struct TYPE_19__ {int * SendPacketList; void* Now; int * SockEvent; int * Interrupts; } ;
struct TYPE_18__ {int HostIPAddressListChanged; TYPE_5__* Ike; TYPE_3__* L2TP; int OsServiceCheckThreadEvent; } ;
struct TYPE_17__ {int * SendPacketList; void* Now; int * SockEvent; int * Interrupts; } ;
typedef int LIST ;
typedef TYPE_3__ L2TP_SERVER ;
typedef TYPE_4__ IPSEC_SERVER ;
typedef TYPE_5__ IKE_SERVER ;


 void* AddHead (void*,int,int *,int) ;
 int DeleteAll (int *) ;
 int Free (void*) ;
 scalar_t__ IKE_UDP_TYPE_ESP ;
 scalar_t__ IKE_UDP_TYPE_ISAKMP ;
 scalar_t__ IPSEC_PORT_IPSEC_ESP_UDP ;
 scalar_t__ IPSEC_PORT_IPSEC_ISAKMP ;
 int IPsecProcPacket (TYPE_4__*,TYPE_1__*) ;
 int L2TPProcessInterrupts (TYPE_3__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ProcessIKEInterrupts (TYPE_5__*) ;
 int Set (int ) ;
 int SetIKEServerSockEvent (TYPE_5__*,int ) ;
 int SetL2TPServerSockEvent (TYPE_3__*,int ) ;
 void* Tick64 () ;
 int UdpListenerSendPackets (TYPE_2__*,int *) ;
 int ipsec_disable ;

void IPsecServerUdpPacketRecvProc(UDPLISTENER *u, LIST *packet_list)
{
 UINT i;
 IPSEC_SERVER *s;
 L2TP_SERVER *l2tp;
 IKE_SERVER *ike;
 UINT64 now;
 static UCHAR zero8[8] = {0, 0, 0, 0, 0, 0, 0, 0, };

 if (u == ((void*)0) || packet_list == ((void*)0))
 {
  return;
 }
 s = (IPSEC_SERVER *)u->Param;
 if (s == ((void*)0))
 {
  return;
 }

 if (u->HostIPAddressListChanged)
 {
  u->HostIPAddressListChanged = 0;

  s->HostIPAddressListChanged = 1;

  Set(s->OsServiceCheckThreadEvent);
 }

 now = Tick64();


 l2tp = s->L2TP;

 if (l2tp->Interrupts == ((void*)0))
 {
  l2tp->Interrupts = u->Interrupts;
 }

 if (l2tp->SockEvent == ((void*)0))
 {
  SetL2TPServerSockEvent(l2tp, u->Event);
 }

 l2tp->Now = now;


 ike = s->Ike;

 if (ike->Interrupts == ((void*)0))
 {
  ike->Interrupts = u->Interrupts;
 }

 if (ike->SockEvent == ((void*)0))
 {
  SetIKEServerSockEvent(ike, u->Event);
 }

 ike->Now = now;

 if (ipsec_disable == 0)
 {
  {

   for (i = 0;i < LIST_NUM(packet_list);i++)
   {
    UDPPACKET *p = LIST_DATA(packet_list, i);

    IPsecProcPacket(s, p);
   }
  }
 }


 L2TPProcessInterrupts(l2tp);


 UdpListenerSendPackets(u, l2tp->SendPacketList);
 DeleteAll(l2tp->SendPacketList);


 ProcessIKEInterrupts(ike);


 for (i = 0;i < LIST_NUM(ike->SendPacketList);i++)
 {
  UDPPACKET *p = LIST_DATA(ike->SendPacketList, i);

  if (p->Type == IKE_UDP_TYPE_ISAKMP && p->SrcPort == IPSEC_PORT_IPSEC_ESP_UDP)
  {

   void *old_data = p->Data;

   p->Data = AddHead(p->Data, p->Size, zero8, 4);
   p->Size += 4;

   Free(old_data);
  }
  else if (p->Type == IKE_UDP_TYPE_ESP && p->SrcPort == IPSEC_PORT_IPSEC_ISAKMP)
  {

   void *old_data = p->Data;

   p->Data = AddHead(p->Data, p->Size, zero8, 8);
   p->Size += 8;

   Free(old_data);
  }
 }


 UdpListenerSendPackets(u, ike->SendPacketList);
 DeleteAll(ike->SendPacketList);
}
