
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int LocalIP; } ;
typedef TYPE_1__ SOCK ;
typedef int IP ;


 TYPE_1__* ConnectEx (char*,int ,int ) ;
 int Copy (int *,int *,int) ;
 int Disconnect (TYPE_1__*) ;
 char* GetRandHostNameForGetMyPrivateIP () ;
 scalar_t__ IsZeroIp (int *) ;
 int ReleaseSock (TYPE_1__*) ;
 int UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT ;
 char* UDP_NAT_T_GET_PRIVATE_IP_TCP_SERVER ;
 int UDP_NAT_T_PORT_FOR_TCP_1 ;
 int UDP_NAT_T_PORT_FOR_TCP_2 ;

bool GetMyPrivateIP(IP *ip, bool from_vg)
{
 SOCK *s;
 IP t;
 char *hostname = UDP_NAT_T_GET_PRIVATE_IP_TCP_SERVER;

 if (ip == ((void*)0))
 {
  return 0;
 }

 s = ConnectEx(hostname, UDP_NAT_T_PORT_FOR_TCP_1, UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT);

 if (s == ((void*)0))
 {
  s = ConnectEx(hostname, UDP_NAT_T_PORT_FOR_TCP_2, UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT);

  if (s == ((void*)0))
  {
   s = ConnectEx(GetRandHostNameForGetMyPrivateIP(), UDP_NAT_T_PORT_FOR_TCP_1, UDP_NAT_T_GET_PRIVATE_IP_CONNECT_TIMEOUT);

   if (s == ((void*)0))
   {
    return 0;
   }
  }
 }

 Copy(&t, &s->LocalIP, sizeof(IP));

 Disconnect(s);
 ReleaseSock(s);

 if (IsZeroIp(&t))
 {
  return 0;
 }

 Copy(ip, &t, sizeof(IP));

 return 1;
}
