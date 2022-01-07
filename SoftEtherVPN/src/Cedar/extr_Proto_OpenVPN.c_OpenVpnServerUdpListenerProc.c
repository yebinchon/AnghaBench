
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int PollMyIpAndPort; scalar_t__ Param; } ;
typedef TYPE_2__ UDPLISTENER ;
struct TYPE_10__ {int SendPacketList; } ;
struct TYPE_9__ {TYPE_5__* OpenVpnServer; TYPE_1__* Cedar; } ;
struct TYPE_7__ {int OpenVPNPublicPorts; } ;
typedef TYPE_3__ OPENVPN_SERVER_UDP ;
typedef int LIST ;


 int ClearStr (int ,int) ;
 int DeleteAll (int ) ;
 int OvsRecvPacket (TYPE_5__*,int *) ;
 int UdpListenerSendPackets (TYPE_2__*,int ) ;

void OpenVpnServerUdpListenerProc(UDPLISTENER *u, LIST *packet_list)
{
 OPENVPN_SERVER_UDP *us;

 if (u == ((void*)0) || packet_list == ((void*)0))
 {
  return;
 }

 us = (OPENVPN_SERVER_UDP *)u->Param;

 if (us->OpenVpnServer != ((void*)0))
 {
  {
   u->PollMyIpAndPort = 0;

   ClearStr(us->Cedar->OpenVPNPublicPorts, sizeof(us->Cedar->OpenVPNPublicPorts));
  }

  OvsRecvPacket(us->OpenVpnServer, packet_list);

  UdpListenerSendPackets(u, us->OpenVpnServer->SendPacketList);
  DeleteAll(us->OpenVpnServer->SendPacketList);
 }
}
