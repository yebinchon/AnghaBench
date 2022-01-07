
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; } ;


 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int,int ,int ) ;
 int setsockopt (int,int ,int ,char const*,int) ;

bool socket_bind(int fd, void *data)
{
   int yes = 1;
   struct addrinfo *res = (struct addrinfo*)data;
   setsockopt(fd, SOL_SOCKET,
         SO_REUSEADDR, (const char*)&yes, sizeof(int));
   if (bind(fd, res->ai_addr, res->ai_addrlen) < 0)
      return 0;
   return 1;
}
