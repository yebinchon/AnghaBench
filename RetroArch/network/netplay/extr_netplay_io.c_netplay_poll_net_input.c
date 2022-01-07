
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {int tv_usec; int member_0; } ;
struct netplay_connection {int fd; scalar_t__ active; } ;
struct TYPE_6__ {size_t connections_size; scalar_t__ timeout_cnt; scalar_t__ unread_frame_count; scalar_t__ run_frame_count; int remote_paused; struct netplay_connection* connections; } ;
typedef TYPE_1__ netplay_t ;
typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 scalar_t__ MAX_RETRIES ;
 int RARCH_LOG (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int RETRY_MS ;
 int netplay_get_cmd (TYPE_1__*,struct netplay_connection*,int*) ;
 int netplay_hangup (TYPE_1__*,struct netplay_connection*) ;
 int netplay_update_unread_ptr (TYPE_1__*) ;
 scalar_t__ socket_select (int,int *,int *,int *,struct timeval*) ;

int netplay_poll_net_input(netplay_t *netplay, bool block)
{
   bool had_input = 0;
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
      had_input = 0;

      netplay->timeout_cnt++;


      for (i = 0; i < netplay->connections_size; i++)
      {
         struct netplay_connection *connection = &netplay->connections[i];
         if (connection->active && !netplay_get_cmd(netplay, connection, &had_input))
            netplay_hangup(netplay, connection);
      }

      if (block)
      {
         netplay_update_unread_ptr(netplay);


         if (netplay->unread_frame_count > netplay->run_frame_count)
            break;


         if (!had_input)
         {
            fd_set fds;
            struct timeval tv = {0};
            tv.tv_usec = RETRY_MS * 1000;

            FD_ZERO(&fds);
            for (i = 0; i < netplay->connections_size; i++)
            {
               struct netplay_connection *connection = &netplay->connections[i];
               if (connection->active)
                  FD_SET(connection->fd, &fds);
            }

            if (socket_select(max_fd, &fds, ((void*)0), ((void*)0), &tv) < 0)
               return -1;

            RARCH_LOG("[netplay] Network is stalling at frame %u, count %u of %d ...\n",
                  netplay->run_frame_count, netplay->timeout_cnt, MAX_RETRIES);

            if (netplay->timeout_cnt >= MAX_RETRIES && !netplay->remote_paused)
               return -1;
         }
      }
   } while (had_input || block);

   return 0;
}
