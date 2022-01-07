
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int s_addr; TYPE_1__ sin_addr; int sin_family; int sin_port; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int s_addr; TYPE_1__ sin_addr; int sin_family; int sin_port; } ;
typedef int sockaddr4 ;
typedef int addr4 ;
typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef scalar_t__ SOCKET ;
typedef int IP ;


 int AF_INET ;
 scalar_t__ INVALID_SOCKET ;
 int IPToInAddr (struct sockaddr_in*,int *) ;
 int SOCK_STREAM ;
 int Zero (struct sockaddr_in*,int) ;
 int closesocket (scalar_t__) ;
 scalar_t__ connect_timeout (scalar_t__,struct sockaddr*,int,scalar_t__,int*) ;
 int htons (int ) ;
 scalar_t__ socket (int ,int ,int ) ;

SOCKET ConnectTimeoutIPv4(IP *ip, UINT port, UINT timeout, bool *cancel_flag)
{
 SOCKET s;
 struct sockaddr_in sockaddr4;
 struct in_addr addr4;

 Zero(&sockaddr4, sizeof(sockaddr4));
 Zero(&addr4, sizeof(addr4));


 IPToInAddr(&addr4, ip);
 sockaddr4.sin_port = htons((USHORT)port);
 sockaddr4.sin_family = AF_INET;
 sockaddr4.sin_addr.s_addr = addr4.s_addr;


 s = socket(AF_INET, SOCK_STREAM, 0);
 if (s != INVALID_SOCKET)
 {

  if (connect_timeout(s, (struct sockaddr *)&sockaddr4, sizeof(struct sockaddr_in), timeout, cancel_flag) != 0)
  {

   closesocket(s);
   s = INVALID_SOCKET;
  }
 }

 return s;
}
