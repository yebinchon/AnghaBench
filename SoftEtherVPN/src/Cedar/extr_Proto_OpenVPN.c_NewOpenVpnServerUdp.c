
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int Event; int Interrupts; } ;
struct TYPE_12__ {TYPE_1__* Server; int ref; } ;
struct TYPE_11__ {TYPE_5__* UdpListener; int OpenVpnServer; TYPE_3__* Cedar; } ;
struct TYPE_10__ {int ListenIP; } ;
typedef TYPE_2__ OPENVPN_SERVER_UDP ;
typedef TYPE_3__ CEDAR ;


 int AddRef (int ) ;
 int NewOpenVpnServer (TYPE_3__*,int ,int ) ;
 TYPE_5__* NewUdpListenerEx (int ,TYPE_2__*,int *,int ) ;
 int OPENVPN_PROTOCOL_UDP ;
 int OpenVpnServerUdpListenerProc ;
 TYPE_2__* ZeroMalloc (int) ;

OPENVPN_SERVER_UDP *NewOpenVpnServerUdp(CEDAR *cedar)
{
 OPENVPN_SERVER_UDP *u;

 if (cedar == ((void*)0))
 {
  return ((void*)0);
 }

 u = ZeroMalloc(sizeof(OPENVPN_SERVER_UDP));

 u->Cedar = cedar;

 AddRef(u->Cedar->ref);


 u->UdpListener = NewUdpListenerEx(OpenVpnServerUdpListenerProc, u, &cedar->Server->ListenIP, OPENVPN_PROTOCOL_UDP);


 u->OpenVpnServer = NewOpenVpnServer(cedar, u->UdpListener->Interrupts, u->UdpListener->Event);

 return u;
}
