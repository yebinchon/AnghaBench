
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct netplay_connection {char* nick; int addr; } ;
struct TYPE_3__ {int connections; int quirks; int force_send_savestate; int is_connected; scalar_t__ stall; scalar_t__ is_server; } ;
typedef TYPE_1__ netplay_t ;
typedef int msg ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CONNECTED_TO ;
 int MSG_CONNECTION_SLOT ;
 int NETPLAY_QUIRK_NO_SAVESTATES ;
 int NETPLAY_QUIRK_NO_TRANSMISSION ;
 scalar_t__ NETPLAY_STALL_NONE ;
 scalar_t__ NETPLAY_STALL_NO_CONNECTION ;
 int RARCH_LOG (char*,char*,...) ;
 char* msg_hash_to_str (int ) ;
 int netplay_log_connection (int *,unsigned int,char*,char*,int) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static void netplay_handshake_ready(netplay_t *netplay,
      struct netplay_connection *connection)
{
   char msg[512];
   msg[0] = '\0';

   if (netplay->is_server)
   {
      unsigned slot = (unsigned)(connection - netplay->connections);

      netplay_log_connection(&connection->addr,
            slot, connection->nick, msg, sizeof(msg));

      RARCH_LOG("%s %u\n", msg_hash_to_str(MSG_CONNECTION_SLOT), slot);


      if (!(netplay->quirks &
               (NETPLAY_QUIRK_NO_SAVESTATES|NETPLAY_QUIRK_NO_TRANSMISSION)))
         netplay->force_send_savestate = 1;
   }
   else
   {
      netplay->is_connected = 1;
      snprintf(msg, sizeof(msg), "%s: \"%s\"",
            msg_hash_to_str(MSG_CONNECTED_TO),
            connection->nick);
   }

   RARCH_LOG("%s\n", msg);
   runloop_msg_queue_push(msg, 1, 180, 0, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);


   if (netplay->stall == NETPLAY_STALL_NO_CONNECTION)
       netplay->stall = NETPLAY_STALL_NONE;
}
