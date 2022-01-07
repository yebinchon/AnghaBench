
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; } ;
typedef int hints ;
typedef int YabSock ;


 int AF_UNSPEC ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int close (int) ;
 int connect (int,int ,int) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 int sprintf (char*,char*,int) ;

int YabSockConnectSocket(const char *ip, int port, YabSock *sock)
{
   struct addrinfo *result = ((void*)0), hints;
   char port_str[256];

   memset(&hints, 0, sizeof(hints));

   hints.ai_family = AF_UNSPEC;
   hints.ai_socktype = SOCK_STREAM;
   hints.ai_protocol = IPPROTO_TCP;

   sprintf(port_str, "%d", port);
   if (getaddrinfo(ip, port_str, &hints, &result) != 0)
   {
      perror("getaddrinfo");
      return -1;
   }


   if ((sock[0] = socket(result->ai_family, result->ai_socktype,
      result->ai_protocol)) == -1)
   {
      freeaddrinfo(result);
      perror("socket");
      return -1;
   }


   if (connect(sock[0], result->ai_addr, (int)result->ai_addrlen) == -1)
   {
      perror("connect");
      freeaddrinfo(result);
      close(sock[0]);
      return -1;
   }

   freeaddrinfo(result);
   return 0;
}
