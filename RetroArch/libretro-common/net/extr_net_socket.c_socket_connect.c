
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct addrinfo {int ai_addrlen; int ai_addr; } ;


 int SOL_SOCKET ;
 int SO_SNDTIMEO ;
 int connect (int,int ,int ) ;
 int setsockopt (int,int ,int ,char*,int) ;

int socket_connect(int fd, void *data, bool timeout_enable)
{
   struct addrinfo *addr = (struct addrinfo*)data;


   if (timeout_enable)
   {
      struct timeval timeout;
      timeout.tv_sec = 4;
      timeout.tv_usec = 0;

      setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, (char*)&timeout, sizeof timeout);
   }


   return connect(fd, addr->ai_addr, addr->ai_addrlen);
}
