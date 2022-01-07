
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct addrinfo {int ai_protocol; int ai_socktype; int ai_family; int ai_flags; int member_0; } ;
typedef int port_buf ;
typedef enum socket_type { ____Placeholder_socket_type } socket_type ;


 int AI_PASSIVE ;



 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 scalar_t__ getaddrinfo_retro (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int network_init () ;
 int snprintf (char*,int,char*,unsigned short) ;
 int socket (int ,int ,int ) ;

int socket_init(void **address, uint16_t port, const char *server, enum socket_type type)
{
   char port_buf[16];
   struct addrinfo hints = {0};
   struct addrinfo **addrinfo = (struct addrinfo**)address;
   struct addrinfo *addr = ((void*)0);

   if (!network_init())
      goto error;

   switch (type)
   {
      case 130:
         hints.ai_socktype = SOCK_DGRAM;
         break;
      case 128:
         hints.ai_socktype = SOCK_STREAM;
         break;
      case 129:

         break;
   }

   if (!server)
      hints.ai_flags = AI_PASSIVE;

   port_buf[0] = '\0';

   snprintf(port_buf, sizeof(port_buf), "%hu", (unsigned short)port);

   if (getaddrinfo_retro(server, port_buf, &hints, addrinfo) != 0)
      goto error;

   addr = (struct addrinfo*)*addrinfo;

   if (!addr)
      goto error;

   return socket(addr->ai_family, addr->ai_socktype, addr->ai_protocol);

error:
   return -1;
}
