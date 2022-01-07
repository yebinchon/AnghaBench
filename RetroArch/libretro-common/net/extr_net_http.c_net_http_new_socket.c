
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int ssl_ctx; scalar_t__ ssl; } ;
struct http_connection_t {TYPE_1__ sock_state; int domain; int port; } ;
struct addrinfo {int dummy; } ;


 int SOCKET_TYPE_STREAM ;
 int freeaddrinfo_retro (struct addrinfo*) ;
 int socket_close (int) ;
 int socket_connect (int,void*,int) ;
 int socket_init (void**,int ,int ,int ) ;
 int socket_next (void**) ;
 scalar_t__ socket_nonblock (int) ;
 int ssl_socket_close (int ) ;
 int ssl_socket_connect (int ,void*,int,int) ;
 int ssl_socket_init (int,int ) ;

__attribute__((used)) static int net_http_new_socket(struct http_connection_t *conn)
{
   int ret;
   struct addrinfo *addr = ((void*)0), *next_addr = ((void*)0);
   int fd = socket_init(
         (void**)&addr, conn->port, conn->domain, SOCKET_TYPE_STREAM);
   next_addr = addr;

   while (fd >= 0)
   {
      {
         ret = socket_connect(fd, (void*)next_addr, 1);

         if (ret >= 0 && socket_nonblock(fd))
            break;

         socket_close(fd);
      }

      fd = socket_next((void**)&next_addr);
   }

   if (addr)
      freeaddrinfo_retro(addr);

   conn->sock_state.fd = fd;

   return fd;
}
