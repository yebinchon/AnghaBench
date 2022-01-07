
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct addrinfo {int dummy; } ;
typedef int netplay_t ;


 int RARCH_ERR (char*) ;
 int SOCKET_TYPE_DATAGRAM ;
 int freeaddrinfo_retro (struct addrinfo*) ;
 int lan_ad_server_fd ;
 int socket_bind (int,void*) ;
 int socket_close (int) ;
 int socket_init (void**,int ,int *,int ) ;

__attribute__((used)) static bool init_lan_ad_server_socket(netplay_t *netplay, uint16_t port)
{
   struct addrinfo *addr = ((void*)0);
   int fd = socket_init((void **) &addr, port, ((void*)0), SOCKET_TYPE_DATAGRAM);

   if (fd < 0)
      goto error;

   if (!socket_bind(fd, (void*)addr))
   {
      socket_close(fd);
      goto error;
   }

   lan_ad_server_fd = fd;
   freeaddrinfo_retro(addr);

   return 1;

error:
   if (addr)
      freeaddrinfo_retro(addr);
   RARCH_ERR("[discovery] Failed to initialize netplay advertisement socket\n");
   return 0;
}
