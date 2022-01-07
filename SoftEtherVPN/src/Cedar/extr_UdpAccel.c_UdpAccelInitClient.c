
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
typedef void* UINT ;
struct TYPE_3__ {scalar_t__ IsIPv6; int Inited; void* YourCookie; void* MyCookie; int Now; void* YourPort; int YourIp2; int YourIp; int * YourKey; } ;
typedef TYPE_1__ UDP_ACCEL ;
typedef int UCHAR ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 int Debug (char*,char*,void*,void*,void*) ;
 int IPToStr (char*,int,int *) ;
 scalar_t__ IsIP6 (int *) ;
 int MAX_SIZE ;
 int Tick64 () ;
 int UDP_ACCELERATION_COMMON_KEY_SIZE ;

bool UdpAccelInitClient(UDP_ACCEL *a, UCHAR *server_key, IP *server_ip, UINT server_port, UINT server_cookie, UINT client_cookie, IP *server_ip_2)
{
 char tmp[MAX_SIZE];

 if (a == ((void*)0) || server_key == ((void*)0) || server_ip == ((void*)0) || server_port == 0)
 {
  return 0;
 }

 IPToStr(tmp, sizeof(tmp), server_ip);
 Debug("UdpAccelInitClient: server_ip=%s, server_port=%u, server_cookie=%u, client_cookie=%u\n", tmp, server_port, server_cookie, client_cookie);

 if (IsIP6(server_ip) != a->IsIPv6)
 {
  return 0;
 }

 Copy(a->YourKey, server_key, UDP_ACCELERATION_COMMON_KEY_SIZE);

 Copy(&a->YourIp, server_ip, sizeof(IP));
 Copy(&a->YourIp2, server_ip_2, sizeof(IP));
 a->YourPort = server_port;

 a->Now = Tick64();

 a->MyCookie = client_cookie;
 a->YourCookie = server_cookie;

 a->Inited = 1;

 return 1;
}
