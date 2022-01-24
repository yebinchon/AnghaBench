#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_usec; int /*<<< orphan*/  member_0; } ;
struct netplay_connection {int fd; scalar_t__ active; } ;
struct TYPE_6__ {size_t connections_size; scalar_t__ timeout_cnt; scalar_t__ unread_frame_count; scalar_t__ run_frame_count; int /*<<< orphan*/  remote_paused; struct netplay_connection* connections; } ;
typedef  TYPE_1__ netplay_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int RETRY_MS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct netplay_connection*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct netplay_connection*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

int FUNC7(netplay_t *netplay, bool block)
{
   bool had_input = false;
   int max_fd = 0;
   size_t i;

   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (connection->active && connection->fd >= max_fd)
         max_fd = connection->fd + 1;
   }

   if (max_fd == 0)
      return 0;

   netplay->timeout_cnt = 0;

   do
   {
      had_input = false;

      netplay->timeout_cnt++;

      /* Read input from each connection */
      for (i = 0; i < netplay->connections_size; i++)
      {
         struct netplay_connection *connection = &netplay->connections[i];
         if (connection->active && !FUNC3(netplay, connection, &had_input))
            FUNC4(netplay, connection);
      }

      if (block)
      {
         FUNC5(netplay);

         /* If we were blocked for input, pass if we have this frame's input */
         if (netplay->unread_frame_count > netplay->run_frame_count)
            break;

         /* If we're supposed to block but we didn't have enough input, wait for it */
         if (!had_input)
         {
            fd_set fds;
            struct timeval tv = {0};
            tv.tv_usec = RETRY_MS * 1000;

            FUNC1(&fds);
            for (i = 0; i < netplay->connections_size; i++)
            {
               struct netplay_connection *connection = &netplay->connections[i];
               if (connection->active)
                  FUNC0(connection->fd, &fds);
            }

            if (FUNC6(max_fd, &fds, NULL, NULL, &tv) < 0)
               return -1;

            FUNC2("[netplay] Network is stalling at frame %u, count %u of %d ...\n",
                  netplay->run_frame_count, netplay->timeout_cnt, MAX_RETRIES);

            if (netplay->timeout_cnt >= MAX_RETRIES && !netplay->remote_paused)
               return -1;
         }
      }
   } while (had_input || block);

   return 0;
}