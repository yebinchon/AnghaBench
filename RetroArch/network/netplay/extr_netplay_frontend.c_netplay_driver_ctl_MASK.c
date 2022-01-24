#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  retro_ctx_serialize_info_t ;
struct TYPE_13__ {int is_replay; int is_connected; int nat_traversal_task_oustanding; int /*<<< orphan*/  desync; } ;
typedef  TYPE_1__ netplay_t ;
typedef  enum rarch_netplay_ctl_state { ____Placeholder_rarch_netplay_ctl_state } rarch_netplay_ctl_state ;
struct TYPE_14__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ discord_userdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_EVENT_DISCORD_UPDATE ; 
 int /*<<< orphan*/  DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED ; 
#define  RARCH_NETPLAY_CTL_DESYNC_POP 147 
#define  RARCH_NETPLAY_CTL_DESYNC_PUSH 146 
#define  RARCH_NETPLAY_CTL_DISABLE 145 
#define  RARCH_NETPLAY_CTL_DISCONNECT 144 
#define  RARCH_NETPLAY_CTL_ENABLE_CLIENT 143 
#define  RARCH_NETPLAY_CTL_ENABLE_SERVER 142 
#define  RARCH_NETPLAY_CTL_FINISHED_NAT_TRAVERSAL 141 
#define  RARCH_NETPLAY_CTL_GAME_WATCH 140 
#define  RARCH_NETPLAY_CTL_IS_CONNECTED 139 
#define  RARCH_NETPLAY_CTL_IS_DATA_INITED 138 
#define  RARCH_NETPLAY_CTL_IS_ENABLED 137 
#define  RARCH_NETPLAY_CTL_IS_REPLAYING 136 
#define  RARCH_NETPLAY_CTL_IS_SERVER 135 
#define  RARCH_NETPLAY_CTL_LOAD_SAVESTATE 134 
#define  RARCH_NETPLAY_CTL_NONE 133 
#define  RARCH_NETPLAY_CTL_PAUSE 132 
#define  RARCH_NETPLAY_CTL_POST_FRAME 131 
#define  RARCH_NETPLAY_CTL_PRE_FRAME 130 
#define  RARCH_NETPLAY_CTL_RESET 129 
#define  RARCH_NETPLAY_CTL_UNPAUSE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  discord_is_inited ; 
 int in_netplay ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* netplay_data ; 
 int FUNC3 (TYPE_1__*) ; 
 int netplay_enabled ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int netplay_is_client ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

bool FUNC9(enum rarch_netplay_ctl_state state, void *data)
{
   netplay_t *netplay = netplay_data;
   bool ret           = true;

   if (in_netplay)
      return true;
   in_netplay = true;

   if (!netplay)
   {
      switch (state)
      {
         case RARCH_NETPLAY_CTL_ENABLE_SERVER:
            netplay_enabled = true;
            netplay_is_client = false;
            goto done;

         case RARCH_NETPLAY_CTL_ENABLE_CLIENT:
            netplay_enabled = true;
            netplay_is_client = true;
            break;

         case RARCH_NETPLAY_CTL_DISABLE:
            netplay_enabled = false;
#ifdef HAVE_DISCORD
            if (discord_is_inited)
            {
               discord_userdata_t userdata;
               userdata.status = DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED;
               command_event(CMD_EVENT_DISCORD_UPDATE, &userdata);
            }
#endif
            goto done;

         case RARCH_NETPLAY_CTL_IS_ENABLED:
            ret = netplay_enabled;
            goto done;

         case RARCH_NETPLAY_CTL_IS_REPLAYING:
         case RARCH_NETPLAY_CTL_IS_DATA_INITED:
            ret = false;
            goto done;

         case RARCH_NETPLAY_CTL_IS_SERVER:
            ret = netplay_enabled && !netplay_is_client;
            goto done;

         case RARCH_NETPLAY_CTL_IS_CONNECTED:
            ret = false;
            goto done;

         default:
            goto done;
      }
   }

   switch (state)
   {
      case RARCH_NETPLAY_CTL_ENABLE_SERVER:
      case RARCH_NETPLAY_CTL_ENABLE_CLIENT:
      case RARCH_NETPLAY_CTL_IS_DATA_INITED:
         goto done;
      case RARCH_NETPLAY_CTL_DISABLE:
         ret = false;
         goto done;
      case RARCH_NETPLAY_CTL_IS_ENABLED:
         goto done;
      case RARCH_NETPLAY_CTL_IS_REPLAYING:
         ret = netplay->is_replay;
         goto done;
      case RARCH_NETPLAY_CTL_IS_SERVER:
         ret = netplay_enabled && !netplay_is_client;
         goto done;
      case RARCH_NETPLAY_CTL_IS_CONNECTED:
         ret = netplay->is_connected;
         goto done;
      case RARCH_NETPLAY_CTL_POST_FRAME:
         FUNC6(netplay);
         break;
      case RARCH_NETPLAY_CTL_PRE_FRAME:
         ret = FUNC7(netplay);
         goto done;
      case RARCH_NETPLAY_CTL_GAME_WATCH:
         FUNC8(netplay);
         break;
      case RARCH_NETPLAY_CTL_PAUSE:
         FUNC4(netplay, true);
         break;
      case RARCH_NETPLAY_CTL_UNPAUSE:
         FUNC4(netplay, false);
         break;
      case RARCH_NETPLAY_CTL_LOAD_SAVESTATE:
         FUNC5(netplay, (retro_ctx_serialize_info_t*)data, true);
         break;
      case RARCH_NETPLAY_CTL_RESET:
         FUNC2(netplay);
         break;
      case RARCH_NETPLAY_CTL_DISCONNECT:
         ret = FUNC3(netplay);
         goto done;
      case RARCH_NETPLAY_CTL_FINISHED_NAT_TRAVERSAL:
         netplay->nat_traversal_task_oustanding = false;
#ifndef HAVE_SOCKET_LEGACY
         FUNC1(netplay);
#endif
         goto done;
      case RARCH_NETPLAY_CTL_DESYNC_PUSH:
         netplay->desync++;
         break;
      case RARCH_NETPLAY_CTL_DESYNC_POP:
         if (netplay->desync)
         {
            netplay->desync--;
            if (!netplay->desync)
               FUNC5(netplay, NULL, true);
         }
         break;
      default:
      case RARCH_NETPLAY_CTL_NONE:
         ret = false;
   }

done:
   in_netplay = false;
   return ret;
}