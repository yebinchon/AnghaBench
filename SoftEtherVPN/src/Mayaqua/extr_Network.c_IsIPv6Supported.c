
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SOCKET ;


 int AF_INET6 ;
 scalar_t__ INVALID_SOCKET ;
 int SOCK_STREAM ;
 int closesocket (scalar_t__) ;
 scalar_t__ socket (int ,int ,int ) ;

bool IsIPv6Supported()
{



 SOCKET s;

 s = socket(AF_INET6, SOCK_STREAM, 0);
 if (s == INVALID_SOCKET)
 {
  return 0;
 }

 closesocket(s);

 return 1;

}
