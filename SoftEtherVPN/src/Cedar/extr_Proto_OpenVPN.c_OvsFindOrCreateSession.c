
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int SessionList; } ;
typedef int OPENVPN_SESSION ;
typedef TYPE_1__ OPENVPN_SERVER ;
typedef int IP ;


 int Insert (int ,int *) ;
 int * OvsNewSession (TYPE_1__*,int *,scalar_t__,int *,scalar_t__,scalar_t__) ;
 int * OvsSearchSession (TYPE_1__*,int *,scalar_t__,int *,scalar_t__,scalar_t__) ;

OPENVPN_SESSION *OvsFindOrCreateSession(OPENVPN_SERVER *s, IP *server_ip, UINT server_port, IP *client_ip, UINT client_port, UINT protocol)
{
 OPENVPN_SESSION *se;

 if (s == ((void*)0) || server_ip == ((void*)0) || server_port == 0 || client_ip == ((void*)0) || client_port == 0)
 {
  return ((void*)0);
 }

 se = OvsSearchSession(s, server_ip, server_port, client_ip, client_port, protocol);
 if (se == ((void*)0))
 {
  se = OvsNewSession(s, server_ip, server_port, client_ip, client_port, protocol);

  if (se != ((void*)0))
  {
   Insert(s->SessionList, se);
  }
 }

 return se;
}
