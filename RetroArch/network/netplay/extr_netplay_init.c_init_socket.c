
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ nat_traversal; scalar_t__ is_server; } ;
typedef TYPE_1__ netplay_t ;


 int init_tcp_socket (TYPE_1__*,void*,char const*,int ) ;
 int netplay_init_nat_traversal (TYPE_1__*) ;
 int network_init () ;

__attribute__((used)) static bool init_socket(netplay_t *netplay, void *direct_host,
      const char *server, uint16_t port)
{
   if (!network_init())
      return 0;

   if (!init_tcp_socket(netplay, direct_host, server, port))
      return 0;

   if (netplay->is_server && netplay->nat_traversal)
      netplay_init_nat_traversal(netplay);

   return 1;
}
