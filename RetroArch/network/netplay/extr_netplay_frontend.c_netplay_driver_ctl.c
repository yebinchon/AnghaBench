
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int retro_ctx_serialize_info_t ;
struct TYPE_13__ {int is_replay; int is_connected; int nat_traversal_task_oustanding; int desync; } ;
typedef TYPE_1__ netplay_t ;
typedef enum rarch_netplay_ctl_state { ____Placeholder_rarch_netplay_ctl_state } rarch_netplay_ctl_state ;
struct TYPE_14__ {int status; } ;
typedef TYPE_2__ discord_userdata_t ;


 int CMD_EVENT_DISCORD_UPDATE ;
 int DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED ;
 int command_event (int ,TYPE_2__*) ;
 int discord_is_inited ;
 int in_netplay ;
 int netplay_announce_nat_traversal (TYPE_1__*) ;
 int netplay_core_reset (TYPE_1__*) ;
 TYPE_1__* netplay_data ;
 int netplay_disconnect (TYPE_1__*) ;
 int netplay_enabled ;
 int netplay_frontend_paused (TYPE_1__*,int) ;
 int netplay_is_client ;
 int netplay_load_savestate (TYPE_1__*,int *,int) ;
 int netplay_post_frame (TYPE_1__*) ;
 int netplay_pre_frame (TYPE_1__*) ;
 int netplay_toggle_play_spectate (TYPE_1__*) ;

bool netplay_driver_ctl(enum rarch_netplay_ctl_state state, void *data)
{
   netplay_t *netplay = netplay_data;
   bool ret = 1;

   if (in_netplay)
      return 1;
   in_netplay = 1;

   if (!netplay)
   {
      switch (state)
      {
         case 142:
            netplay_enabled = 1;
            netplay_is_client = 0;
            goto done;

         case 143:
            netplay_enabled = 1;
            netplay_is_client = 1;
            break;

         case 145:
            netplay_enabled = 0;
            goto done;

         case 137:
            ret = netplay_enabled;
            goto done;

         case 136:
         case 138:
            ret = 0;
            goto done;

         case 135:
            ret = netplay_enabled && !netplay_is_client;
            goto done;

         case 139:
            ret = 0;
            goto done;

         default:
            goto done;
      }
   }

   switch (state)
   {
      case 142:
      case 143:
      case 138:
         goto done;
      case 145:
         ret = 0;
         goto done;
      case 137:
         goto done;
      case 136:
         ret = netplay->is_replay;
         goto done;
      case 135:
         ret = netplay_enabled && !netplay_is_client;
         goto done;
      case 139:
         ret = netplay->is_connected;
         goto done;
      case 131:
         netplay_post_frame(netplay);
         break;
      case 130:
         ret = netplay_pre_frame(netplay);
         goto done;
      case 140:
         netplay_toggle_play_spectate(netplay);
         break;
      case 132:
         netplay_frontend_paused(netplay, 1);
         break;
      case 128:
         netplay_frontend_paused(netplay, 0);
         break;
      case 134:
         netplay_load_savestate(netplay, (retro_ctx_serialize_info_t*)data, 1);
         break;
      case 129:
         netplay_core_reset(netplay);
         break;
      case 144:
         ret = netplay_disconnect(netplay);
         goto done;
      case 141:
         netplay->nat_traversal_task_oustanding = 0;

         netplay_announce_nat_traversal(netplay);

         goto done;
      case 146:
         netplay->desync++;
         break;
      case 147:
         if (netplay->desync)
         {
            netplay->desync--;
            if (!netplay->desync)
               netplay_load_savestate(netplay, ((void*)0), 1);
         }
         break;
      default:
      case 133:
         ret = 0;
   }

done:
   in_netplay = 0;
   return ret;
}
