
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ data; } ;
struct netplay_connection {TYPE_2__ recv_packet_buffer; TYPE_2__ send_packet_buffer; scalar_t__ active; } ;
struct TYPE_5__ {int zbuffer_size; size_t packet_buffer_size; size_t connections_size; struct netplay_connection* connections; } ;
typedef TYPE_1__ netplay_t ;


 int NETPLAY_MAX_STALL_FRAMES ;
 int netplay_init_socket_buffer (TYPE_2__*,size_t) ;
 int netplay_resize_socket_buffer (TYPE_2__*,size_t) ;

__attribute__((used)) static bool netplay_init_socket_buffers(netplay_t *netplay)
{


   size_t i;
   size_t packet_buffer_size = netplay->zbuffer_size +
      NETPLAY_MAX_STALL_FRAMES * 16;
   netplay->packet_buffer_size = packet_buffer_size;

   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (connection->active)
      {
         if (connection->send_packet_buffer.data)
         {
            if (!netplay_resize_socket_buffer(&connection->send_packet_buffer,
                  packet_buffer_size) ||
                !netplay_resize_socket_buffer(&connection->recv_packet_buffer,
                  packet_buffer_size))
               return 0;
         }
         else
         {
            if (!netplay_init_socket_buffer(&connection->send_packet_buffer,
                  packet_buffer_size) ||
                !netplay_init_socket_buffer(&connection->recv_packet_buffer,
                  packet_buffer_size))
               return 0;
         }
      }
   }

   return 1;
}
