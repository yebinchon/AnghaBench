
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;


 int socket (int ,int ,int ) ;

int socket_next(void **addrinfo)
{
   struct addrinfo *addr = (struct addrinfo*)*addrinfo;
   if ((*addrinfo = addr = addr->ai_next))
      return socket(addr->ai_family, addr->ai_socktype, addr->ai_protocol);
   else
      return -1;
}
