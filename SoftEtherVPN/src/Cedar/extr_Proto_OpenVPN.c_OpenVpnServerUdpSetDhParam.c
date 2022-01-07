
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* OpenVpnServer; } ;
struct TYPE_4__ {int * Dh; } ;
typedef TYPE_2__ OPENVPN_SERVER_UDP ;
typedef int DH_CTX ;


 int DhFree (int *) ;

void OpenVpnServerUdpSetDhParam(OPENVPN_SERVER_UDP *u, DH_CTX *dh)
{

 if (u == ((void*)0)) {
  return;
 }

 if (u->OpenVpnServer->Dh)
 {
  DhFree(u->OpenVpnServer->Dh);
 }

 u->OpenVpnServer->Dh = dh;
}
