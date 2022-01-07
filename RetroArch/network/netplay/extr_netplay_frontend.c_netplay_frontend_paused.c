
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct netplay_connection {scalar_t__ mode; int fd; int send_packet_buffer; scalar_t__ active; scalar_t__ paused; } ;
struct TYPE_4__ {int local_paused; size_t connections_size; int * nick; struct netplay_connection* connections; } ;
typedef TYPE_1__ netplay_t ;


 int NETPLAY_CMD_PAUSE ;
 int NETPLAY_CMD_RESUME ;
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;
 int NETPLAY_NICK_LEN ;
 int netplay_send_flush (int *,int ,int) ;
 int netplay_send_raw_cmd (TYPE_1__*,struct netplay_connection*,int ,int *,int ) ;

__attribute__((used)) static void netplay_frontend_paused(netplay_t *netplay, bool paused)
{
   size_t i;
   uint32_t paused_ct;


   if (netplay->local_paused == paused)
      return;

   netplay->local_paused = paused;





   paused_ct = 0;
   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (connection->active && connection->paused)
         paused_ct++;
   }
   if (paused_ct > 1)
      return;



   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (connection->active && connection->mode >= NETPLAY_CONNECTION_CONNECTED)
      {
         if (paused)
            netplay_send_raw_cmd(netplay, connection, NETPLAY_CMD_PAUSE,
               netplay->nick, NETPLAY_NICK_LEN);
         else
            netplay_send_raw_cmd(netplay, connection, NETPLAY_CMD_RESUME,
               ((void*)0), 0);


         netplay_send_flush(&connection->send_packet_buffer, connection->fd, 1);
      }
   }
}
