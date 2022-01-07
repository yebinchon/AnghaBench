
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ self_mode; } ;
typedef TYPE_1__ netplay_t ;
typedef enum rarch_netplay_connection_mode { ____Placeholder_rarch_netplay_connection_mode } rarch_netplay_connection_mode ;


 scalar_t__ NETPLAY_CONNECTION_PLAYING ;
 scalar_t__ NETPLAY_CONNECTION_SLAVE ;
 scalar_t__ NETPLAY_CONNECTION_SPECTATING ;
 int netplay_cmd_mode (TYPE_1__*,int) ;

__attribute__((used)) static void netplay_toggle_play_spectate(netplay_t *netplay)
{
   enum rarch_netplay_connection_mode mode;

   if (netplay->self_mode == NETPLAY_CONNECTION_PLAYING ||
       netplay->self_mode == NETPLAY_CONNECTION_SLAVE)
   {

      netplay->self_mode = NETPLAY_CONNECTION_SPECTATING;
      mode = NETPLAY_CONNECTION_SPECTATING;
   }
   else if (netplay->self_mode == NETPLAY_CONNECTION_SPECTATING)
   {

      mode = NETPLAY_CONNECTION_PLAYING;
   }
   else
      return;

   netplay_cmd_mode(netplay, mode);
}
