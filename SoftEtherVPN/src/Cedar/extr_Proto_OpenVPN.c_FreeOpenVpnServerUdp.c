
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Cedar; int OpenVpnServer; int UdpListener; } ;
typedef TYPE_1__ OPENVPN_SERVER_UDP ;


 int Free (TYPE_1__*) ;
 int FreeOpenVpnServer (int ) ;
 int FreeUdpListener (int ) ;
 int ReleaseCedar (int ) ;

void FreeOpenVpnServerUdp(OPENVPN_SERVER_UDP *u)
{

 if (u == ((void*)0))
 {
  return;
 }


 FreeUdpListener(u->UdpListener);


 FreeOpenVpnServer(u->OpenVpnServer);

 ReleaseCedar(u->Cedar);

 Free(u);
}
