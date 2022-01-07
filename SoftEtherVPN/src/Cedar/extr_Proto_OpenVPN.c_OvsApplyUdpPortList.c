
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int ListenIP; } ;
struct TYPE_5__ {TYPE_3__* UdpListener; } ;
typedef TYPE_1__ OPENVPN_SERVER_UDP ;
typedef int LIST ;
typedef int IP ;


 int AddPortToUdpListener (TYPE_3__*,scalar_t__) ;
 int Copy (int *,int *,int) ;
 int DeleteAllPortFromUdpListener (TYPE_3__*) ;
 scalar_t__ LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseIntList (int *) ;
 int * StrToIntList (char*,int) ;

void OvsApplyUdpPortList(OPENVPN_SERVER_UDP *u, char *port_list, IP *listen_ip)
{
 LIST *o;
 UINT i;

 if (u == ((void*)0))
 {
  return;
 }

 DeleteAllPortFromUdpListener(u->UdpListener);

 if (u->UdpListener != ((void*)0) && listen_ip != ((void*)0))
 {
  Copy(&u->UdpListener->ListenIP, listen_ip, sizeof(IP));
 }

 o = StrToIntList(port_list, 1);

 for (i = 0;i < LIST_NUM(o);i++)
 {
  UINT port = *((UINT *)LIST_DATA(o, i));

  if (port >= 1 && port <= 65535)
  {
   AddPortToUdpListener(u->UdpListener, port);
  }
 }

 ReleaseIntList(o);
}
