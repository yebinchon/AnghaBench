
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ connections_size; int savestate_request_outstanding; TYPE_3__* connections; } ;
typedef TYPE_1__ netplay_t ;
struct TYPE_6__ {scalar_t__ mode; int active; } ;


 int NETPLAY_CMD_REQUEST_SAVESTATE ;
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;
 int netplay_send_raw_cmd (TYPE_1__*,TYPE_3__*,int ,int *,int ) ;

bool netplay_cmd_request_savestate(netplay_t *netplay)
{
   if (netplay->connections_size == 0 ||
       !netplay->connections[0].active ||
       netplay->connections[0].mode < NETPLAY_CONNECTION_CONNECTED)
      return 0;
   if (netplay->savestate_request_outstanding)
      return 1;
   netplay->savestate_request_outstanding = 1;
   return netplay_send_raw_cmd(netplay, &netplay->connections[0],
      NETPLAY_CMD_REQUEST_SAVESTATE, ((void*)0), 0);
}
