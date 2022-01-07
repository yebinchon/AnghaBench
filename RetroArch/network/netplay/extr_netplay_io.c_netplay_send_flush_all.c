
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct netplay_connection {scalar_t__ mode; int fd; int send_packet_buffer; scalar_t__ active; } ;
struct TYPE_4__ {size_t connections_size; struct netplay_connection* connections; } ;
typedef TYPE_1__ netplay_t ;


 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;
 int netplay_hangup (TYPE_1__*,struct netplay_connection*) ;
 int netplay_send_flush (int *,int ,int) ;

__attribute__((used)) static void netplay_send_flush_all(netplay_t *netplay,
   struct netplay_connection *except)
{
   size_t i;
   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (connection == except)
         continue;
      if (connection->active && connection->mode >= NETPLAY_CONNECTION_CONNECTED)
      {
         if (!netplay_send_flush(&connection->send_packet_buffer,
            connection->fd, 1))
            netplay_hangup(netplay, connection);
      }
   }
}
