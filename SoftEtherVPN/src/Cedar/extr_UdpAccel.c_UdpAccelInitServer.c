
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
typedef int UINT ;
struct TYPE_3__ {scalar_t__ IsIPv6; int Inited; int Now; int YourPort; int YourIp2; int YourIp; int * YourKey; int YourCookie; int MyCookie; } ;
typedef TYPE_1__ UDP_ACCEL ;
typedef int UCHAR ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int Debug (char*,char*,int ,int ,int ) ;
 int IPToStr (char*,int,int *) ;
 scalar_t__ IsIP6 (int *) ;
 int MAX_SIZE ;
 int Tick64 () ;
 int UDP_ACCELERATION_COMMON_KEY_SIZE ;

bool UdpAccelInitServer(UDP_ACCEL *a, UCHAR *client_key, IP *client_ip, UINT client_port, IP *client_ip_2)
{
 char tmp[MAX_SIZE];

 if (a == ((void*)0) || client_key == ((void*)0))
 {
  return 0;
 }

 IPToStr(tmp, sizeof(tmp), client_ip);
 Debug("UdpAccelInitServer: client_ip=%s, client_port=%u, server_cookie=%u, client_cookie=%u\n", tmp, client_port,
  a->MyCookie, a->YourCookie);

 if (IsIP6(client_ip) != a->IsIPv6)
 {
  return 0;
 }

 Copy(a->YourKey, client_key, UDP_ACCELERATION_COMMON_KEY_SIZE);

 Copy(&a->YourIp, client_ip, sizeof(IP));
 Copy(&a->YourIp2, client_ip_2, sizeof(IP));
 a->YourPort = client_port;

 a->Now = Tick64();

 a->Inited = 1;

 return 1;
}
