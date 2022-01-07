
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int SessionList; } ;
struct TYPE_7__ {scalar_t__ Protocol; scalar_t__ ServerPort; int ServerIp; scalar_t__ ClientPort; int ClientIp; } ;
typedef TYPE_1__ OPENVPN_SESSION ;
typedef TYPE_2__ OPENVPN_SERVER ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 TYPE_1__* Search (int ,TYPE_1__*) ;

OPENVPN_SESSION *OvsSearchSession(OPENVPN_SERVER *s, IP *server_ip, UINT server_port, IP *client_ip, UINT client_port, UINT protocol)
{
 OPENVPN_SESSION *se;
 OPENVPN_SESSION t;

 if (s == ((void*)0) || server_ip == ((void*)0) || server_port == 0 || client_ip == ((void*)0) || client_port == 0)
 {
  return ((void*)0);
 }

 Copy(&t.ClientIp, client_ip, sizeof(IP));
 t.ClientPort = client_port;
 Copy(&t.ServerIp, server_ip, sizeof(IP));
 t.ServerPort = server_port;
 t.Protocol = protocol;

 se = Search(s->SessionList, &t);

 return se;
}
