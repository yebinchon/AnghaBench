
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ Type; } ;
typedef TYPE_2__ UDPPACKET ;
struct TYPE_9__ {scalar_t__ Protocol; int SendPacketList; TYPE_1__* UdpSock; } ;
struct TYPE_7__ {int LocalPort; int LocalIP; } ;
typedef TYPE_3__ RUDP_STACK ;
typedef int IP ;


 int Add (int ,TYPE_2__*) ;
 int Clone (void*,scalar_t__) ;
 TYPE_2__* NewUdpPacket (int *,int ,int *,scalar_t__,int ,scalar_t__) ;
 scalar_t__ RUDP_PROTOCOL_DNS ;
 scalar_t__ RUDP_PROTOCOL_ICMP ;

void RUDPSendPacket(RUDP_STACK *r, IP *dest_ip, UINT dest_port, void *data, UINT size, UINT icmp_type)
{
 UDPPACKET *p;

 if (r == ((void*)0) || dest_ip == ((void*)0) || dest_port == 0 || data == ((void*)0) || size == 0)
 {
  return;
 }

 p = NewUdpPacket(&r->UdpSock->LocalIP, r->UdpSock->LocalPort,
  dest_ip, dest_port,
  Clone(data, size), size);

 if (r->Protocol == RUDP_PROTOCOL_ICMP || r->Protocol == RUDP_PROTOCOL_DNS)
 {

  p->Type = icmp_type;
 }

 Add(r->SendPacketList, p);
}
