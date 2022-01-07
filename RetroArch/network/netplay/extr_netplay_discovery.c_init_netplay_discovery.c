
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;


 int RARCH_ERR (char*) ;
 int SOCKET_TYPE_DATAGRAM ;
 int freeaddrinfo_retro (struct addrinfo*) ;
 int lan_ad_client_fd ;
 int socket_bind (int,void*) ;
 int socket_close (int) ;
 int socket_init (void**,int ,int *,int ) ;

bool init_netplay_discovery(void)
{
   struct addrinfo *addr = ((void*)0);
   int fd = socket_init((void **) &addr, 0, ((void*)0), SOCKET_TYPE_DATAGRAM);

   if (fd < 0)
      goto error;

   if (!socket_bind(fd, (void*)addr))
   {
      socket_close(fd);
      goto error;
   }

   lan_ad_client_fd = fd;
   freeaddrinfo_retro(addr);
   return 1;

error:
   if (addr)
      freeaddrinfo_retro(addr);
   RARCH_ERR("[discovery] Failed to initialize netplay advertisement client socket.\n");
   return 0;
}
