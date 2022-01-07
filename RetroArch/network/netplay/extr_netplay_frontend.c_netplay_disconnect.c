
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t connections_size; int * connections; } ;
typedef TYPE_1__ netplay_t ;
struct TYPE_7__ {int status; } ;
typedef TYPE_2__ discord_userdata_t ;


 int CMD_EVENT_DISCORD_UPDATE ;
 int DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED ;
 int command_event (int ,TYPE_2__*) ;
 int deinit_netplay () ;
 scalar_t__ discord_is_inited ;
 int netplay_hangup (TYPE_1__*,int *) ;

__attribute__((used)) static bool netplay_disconnect(netplay_t *netplay)
{
   size_t i;

   if (!netplay)
      return 1;
   for (i = 0; i < netplay->connections_size; i++)
      netplay_hangup(netplay, &netplay->connections[i]);

   deinit_netplay();
   return 1;
}
