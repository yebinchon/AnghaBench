
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


struct timeval {int member_0; } ;
struct TYPE_17__ {int netplay_use_mitm_server; scalar_t__ netplay_public_announce; } ;
struct TYPE_19__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_16__ {scalar_t__ have_inet4; scalar_t__ request_outstanding; int nfds; int fds; } ;
struct TYPE_20__ {int quirks; int connected_players; scalar_t__ remote_paused; scalar_t__ stall; scalar_t__ is_server; TYPE_2__* connections; TYPE_14__ nat_traversal_state; int nat_traversal_task_oustanding; scalar_t__ nat_traversal; scalar_t__ local_paused; } ;
typedef TYPE_4__ netplay_t ;
typedef int fd_set ;
struct TYPE_18__ {int active; } ;


 int NETPLAY_QUIRK_INITIALIZATION ;
 TYPE_3__* config_get_ptr () ;
 scalar_t__ is_mitm ;
 int natt_read (TYPE_14__*) ;
 int netplay_announce () ;
 int netplay_announce_nat_traversal (TYPE_4__*) ;
 int netplay_disconnect (TYPE_4__*) ;
 int netplay_frontend_paused (TYPE_4__*,int) ;
 int netplay_lan_ad_server (TYPE_4__*) ;
 int netplay_sync_post_frame (TYPE_4__*,int) ;
 int netplay_sync_pre_frame (TYPE_4__*) ;
 int netplay_try_init_serialization (TYPE_4__*) ;
 int reannounce ;
 int retro_assert (TYPE_4__*) ;
 scalar_t__ socket_select (int ,int *,int *,int *,struct timeval*) ;

bool netplay_pre_frame(netplay_t *netplay)
{
   bool sync_stalled;
   settings_t *settings = config_get_ptr();

   retro_assert(netplay);

   if (settings->bools.netplay_public_announce)
   {
      reannounce++;
      if ((netplay->is_server || is_mitm) && (reannounce % 600 == 0))
         netplay_announce();
   }

   else
      reannounce = -1;


   if (netplay->local_paused)
      netplay_frontend_paused(netplay, 0);


   if (netplay->quirks & NETPLAY_QUIRK_INITIALIZATION)
      netplay_try_init_serialization(netplay);

   if (netplay->is_server && !settings->bools.netplay_use_mitm_server)
   {

      netplay_lan_ad_server(netplay);


      if (netplay->nat_traversal &&
          !netplay->nat_traversal_task_oustanding &&
          netplay->nat_traversal_state.request_outstanding &&
          !netplay->nat_traversal_state.have_inet4)
      {
         struct timeval tmptv = {0};
         fd_set fds = netplay->nat_traversal_state.fds;
         if (socket_select(netplay->nat_traversal_state.nfds, &fds, ((void*)0), ((void*)0), &tmptv) > 0)
            natt_read(&netplay->nat_traversal_state);


         if (!netplay->nat_traversal_state.request_outstanding ||
             netplay->nat_traversal_state.have_inet4)
            netplay_announce_nat_traversal(netplay);

      }
   }

   sync_stalled = !netplay_sync_pre_frame(netplay);


   if (!netplay->is_server && !netplay->connections[0].active)
   {
      netplay_disconnect(netplay);
      return 1;
   }

   if (sync_stalled ||
       ((!netplay->is_server || (netplay->connected_players>1)) &&
        (netplay->stall || netplay->remote_paused)))
   {


      netplay_sync_post_frame(netplay, 1);
      return 0;
   }
   return 1;
}
