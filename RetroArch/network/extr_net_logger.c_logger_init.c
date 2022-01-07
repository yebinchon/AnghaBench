
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int port; char const* server; int domain; } ;
typedef TYPE_1__ socket_target_t ;


 char* PC_DEVELOPMENT_IP_ADDRESS ;
 unsigned int PC_DEVELOPMENT_UDP_PORT ;
 int SOCKET_DOMAIN_INET ;
 int SOCKET_PROTOCOL_NONE ;
 int SOCKET_TYPE_DATAGRAM ;
 int g_sid ;
 int network_init () ;
 int printf (char*) ;
 int socket_create (char*,int ,int ,int ) ;
 int socket_set_target (int *,TYPE_1__*) ;
 int target ;

void logger_init (void)
{
   socket_target_t in_target;
   const char *server = PC_DEVELOPMENT_IP_ADDRESS;
   unsigned port = PC_DEVELOPMENT_UDP_PORT;

   if (!network_init())
   {
      printf("Could not initialize network logger interface.\n");
      return;
   }

   g_sid = socket_create(
         "ra_netlogger",
         SOCKET_DOMAIN_INET,
         SOCKET_TYPE_DATAGRAM,
         SOCKET_PROTOCOL_NONE);

   in_target.port = port;
   in_target.server = server;
   in_target.domain = SOCKET_DOMAIN_INET;

   socket_set_target(&target, &in_target);
}
