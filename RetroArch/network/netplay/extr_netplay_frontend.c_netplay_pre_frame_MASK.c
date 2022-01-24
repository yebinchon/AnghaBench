#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;

/* Type definitions */
struct timeval {int /*<<< orphan*/  member_0; } ;
struct TYPE_17__ {int /*<<< orphan*/  netplay_use_mitm_server; scalar_t__ netplay_public_announce; } ;
struct TYPE_19__ {TYPE_1__ bools; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_16__ {scalar_t__ have_inet4; scalar_t__ request_outstanding; int /*<<< orphan*/  nfds; int /*<<< orphan*/  fds; } ;
struct TYPE_20__ {int quirks; int connected_players; scalar_t__ remote_paused; scalar_t__ stall; scalar_t__ is_server; TYPE_2__* connections; TYPE_14__ nat_traversal_state; int /*<<< orphan*/  nat_traversal_task_oustanding; scalar_t__ nat_traversal; scalar_t__ local_paused; } ;
typedef  TYPE_4__ netplay_t ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_18__ {int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int NETPLAY_QUIRK_INITIALIZATION ; 
 TYPE_3__* FUNC0 () ; 
 scalar_t__ is_mitm ; 
 int /*<<< orphan*/  FUNC1 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int reannounce ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

bool FUNC12(netplay_t *netplay)
{
   bool sync_stalled;
   settings_t *settings  = FUNC0();

   FUNC10(netplay);

   if (settings->bools.netplay_public_announce)
   {
      reannounce++;
      if ((netplay->is_server || is_mitm) && (reannounce % 600 == 0))
         FUNC2();
   }
   /* Make sure that if announcement is turned on mid-game, it gets announced */
   else
      reannounce = -1;

   /* FIXME: This is an ugly way to learn we're not paused anymore */
   if (netplay->local_paused)
      FUNC5(netplay, false);

   /* Are we ready now? */
   if (netplay->quirks & NETPLAY_QUIRK_INITIALIZATION)
      FUNC9(netplay);

   if (netplay->is_server && !settings->bools.netplay_use_mitm_server)
   {
      /* Advertise our server */
      FUNC6(netplay);

      /* NAT traversal if applicable */
      if (netplay->nat_traversal &&
          !netplay->nat_traversal_task_oustanding &&
          netplay->nat_traversal_state.request_outstanding &&
          !netplay->nat_traversal_state.have_inet4)
      {
         struct timeval tmptv = {0};
         fd_set fds = netplay->nat_traversal_state.fds;
         if (FUNC11(netplay->nat_traversal_state.nfds, &fds, NULL, NULL, &tmptv) > 0)
            FUNC1(&netplay->nat_traversal_state);

#ifndef HAVE_SOCKET_LEGACY
         if (!netplay->nat_traversal_state.request_outstanding ||
             netplay->nat_traversal_state.have_inet4)
            FUNC3(netplay);
#endif
      }
   }

   sync_stalled = !FUNC8(netplay);

   /* If we're disconnected, deinitialize */
   if (!netplay->is_server && !netplay->connections[0].active)
   {
      FUNC4(netplay);
      return true;
   }

   if (sync_stalled ||
       ((!netplay->is_server || (netplay->connected_players>1)) &&
        (netplay->stall || netplay->remote_paused)))
   {
      /* We may have received data even if we're stalled, so run post-frame
       * sync */
      FUNC7(netplay, true);
      return false;
   }
   return true;
}