
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ Type; } ;
typedef TYPE_1__ UDPPACKET ;
struct TYPE_7__ {int SendPacketList; } ;
typedef int IP ;
typedef TYPE_2__ IKE_SERVER ;


 int Add (int ,TYPE_1__*) ;
 TYPE_1__* NewUdpPacket (int *,scalar_t__,int *,scalar_t__,void*,scalar_t__) ;

void IkeSendUdpPacket(IKE_SERVER *ike, UINT type, IP *server_ip, UINT server_port, IP *client_ip, UINT client_port, void *data, UINT size)
{
 UDPPACKET *p;

 if (ike == ((void*)0) || server_ip == ((void*)0) || client_ip == ((void*)0) || server_port == 0 || client_port == 0 || data == ((void*)0) || size == 0)
 {
  return;
 }

 p = NewUdpPacket(server_ip, server_port, client_ip, client_port, data, size);

 p->Type = type;

 Add(ike->SendPacketList, p);
}
