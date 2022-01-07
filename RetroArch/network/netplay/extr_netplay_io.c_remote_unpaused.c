
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct netplay_connection {int paused; scalar_t__ active; } ;
struct TYPE_4__ {int remote_paused; size_t connections_size; int local_paused; struct netplay_connection* connections; } ;
typedef TYPE_1__ netplay_t ;


 int NETPLAY_CMD_RESUME ;
 int netplay_send_raw_cmd_all (TYPE_1__*,struct netplay_connection*,int ,int *,int ) ;

__attribute__((used)) static void remote_unpaused(netplay_t *netplay, struct netplay_connection *connection)
{
    size_t i;
    connection->paused = 0;
    netplay->remote_paused = 0;
    for (i = 0; i < netplay->connections_size; i++)
    {
       struct netplay_connection *sc = &netplay->connections[i];
       if (sc->active && sc->paused)
       {
          netplay->remote_paused = 1;
          break;
       }
    }
    if (!netplay->remote_paused && !netplay->local_paused)
       netplay_send_raw_cmd_all(netplay, connection, NETPLAY_CMD_RESUME, ((void*)0), 0);
}
