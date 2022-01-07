
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct netplay_connection {scalar_t__ active; int fd; int send_packet_buffer; } ;
struct TYPE_8__ {size_t connections_size; struct netplay_connection* connections; int is_server; } ;
typedef TYPE_1__ netplay_t ;


 int netplay_disconnect (TYPE_1__*) ;
 int netplay_hangup (TYPE_1__*,struct netplay_connection*) ;
 int netplay_send_flush (int *,int ,int) ;
 int netplay_sync_post_frame (TYPE_1__*,int) ;
 int netplay_update_unread_ptr (TYPE_1__*) ;
 int retro_assert (TYPE_1__*) ;

void netplay_post_frame(netplay_t *netplay)
{
   size_t i;
   retro_assert(netplay);
   netplay_update_unread_ptr(netplay);
   netplay_sync_post_frame(netplay, 0);

   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (connection->active &&
          !netplay_send_flush(&connection->send_packet_buffer, connection->fd,
            0))
         netplay_hangup(netplay, connection);
   }


   if (!netplay->is_server && !netplay->connections[0].active)
      netplay_disconnect(netplay);
}
