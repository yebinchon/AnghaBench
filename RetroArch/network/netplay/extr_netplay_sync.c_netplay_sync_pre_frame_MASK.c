#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  their_addr ;
struct timeval {int /*<<< orphan*/  member_0; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_14__ {scalar_t__ data; } ;
struct netplay_connection {int active; scalar_t__ mode; int fd; TYPE_6__ send_packet_buffer; TYPE_6__ recv_packet_buffer; } ;
typedef  int socklen_t ;
struct TYPE_12__ {int size; struct netplay_connection* data_const; struct netplay_connection* data; } ;
typedef  TYPE_1__ retro_ctx_serialize_info_t ;
struct TYPE_13__ {size_t run_ptr; scalar_t__ run_frame_count; int state_size; int quirks; int force_send_savestate; scalar_t__ stall; size_t self_ptr; scalar_t__ self_frame_count; int stateless_mode; size_t connections_size; int can_poll; int /*<<< orphan*/  packet_buffer_size; struct netplay_connection* connections; scalar_t__ listen_fd; scalar_t__ is_server; TYPE_9__* buffer; int /*<<< orphan*/  remote_paused; } ;
typedef  TYPE_2__ netplay_t ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_15__ {struct netplay_connection* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FD_CLOEXEC ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  MSG_NETPLAY_FAILED ; 
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ; 
 scalar_t__ NETPLAY_CONNECTION_DELAYED_DISCONNECT ; 
 scalar_t__ NETPLAY_CONNECTION_INIT ; 
 int NETPLAY_QUIRK_INITIALIZATION ; 
 int NETPLAY_QUIRK_NO_SAVESTATES ; 
 int NETPLAY_QUIRK_NO_TRANSMISSION ; 
 scalar_t__ NETPLAY_STALL_NO_CONNECTION ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int FUNC5 (scalar_t__,struct sockaddr*,int*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct netplay_connection*,struct netplay_connection*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct netplay_connection*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 scalar_t__ FUNC14 (TYPE_2__*,TYPE_9__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct netplay_connection*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC18 (struct netplay_connection*,size_t) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 scalar_t__ FUNC22 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

bool FUNC23(netplay_t *netplay)
{
   retro_ctx_serialize_info_t serial_info;

   if (FUNC14(netplay,
            &netplay->buffer[netplay->run_ptr], netplay->run_frame_count))
   {
      serial_info.data_const = NULL;
      serial_info.data       = netplay->buffer[netplay->run_ptr].state;
      serial_info.size       = netplay->state_size;

      FUNC11(serial_info.data, 0, serial_info.size);
      if ((netplay->quirks & NETPLAY_QUIRK_INITIALIZATION)
            || netplay->run_frame_count == 0)
      {
         /* Don't serialize until it's safe */
      }
      else if (!(netplay->quirks & NETPLAY_QUIRK_NO_SAVESTATES)
            && FUNC6(&serial_info))
      {
         if (netplay->force_send_savestate && !netplay->stall
               && !netplay->remote_paused)
         {
            /* Bring our running frame and input frames into
             * parity so we don't send old info. */
            if (netplay->run_ptr != netplay->self_ptr)
            {
               FUNC10(netplay->buffer[netplay->self_ptr].state,
                  netplay->buffer[netplay->run_ptr].state,
                  netplay->state_size);
               netplay->run_ptr         = netplay->self_ptr;
               netplay->run_frame_count = netplay->self_frame_count;
            }

            /* Send this along to the other side */
            serial_info.data_const = netplay->buffer[netplay->run_ptr].state;
            FUNC17(netplay, &serial_info, false);
            netplay->force_send_savestate = false;
         }
      }
      else
      {
         /* If the core can't serialize properly, we must stall for the
          * remote input on EVERY frame, because we can't recover */
         netplay->quirks |= NETPLAY_QUIRK_NO_SAVESTATES;
         netplay->stateless_mode = true;
      }

      /* If we can't transmit savestates, we must stall
       * until the client is ready. */
      if (netplay->run_frame_count > 0 &&
          (netplay->quirks & (NETPLAY_QUIRK_NO_SAVESTATES|NETPLAY_QUIRK_NO_TRANSMISSION)) &&
          (netplay->connections_size == 0 || !netplay->connections[0].active ||
           netplay->connections[0].mode < NETPLAY_CONNECTION_CONNECTED))
         netplay->stall = NETPLAY_STALL_NO_CONNECTION;
   }

   if (netplay->is_server)
   {
      fd_set fds;
      struct timeval tmp_tv = {0};
      int new_fd;
      struct sockaddr_storage their_addr;
      socklen_t addr_size;
      struct netplay_connection *connection;
      size_t connection_num;

      /* Check for a connection */
      FUNC2(&fds);
      FUNC1(netplay->listen_fd, &fds);
      if (FUNC22(netplay->listen_fd + 1,
               &fds, NULL, NULL, &tmp_tv) > 0 &&
          FUNC0(netplay->listen_fd, &fds))
      {
         addr_size = sizeof(their_addr);
         new_fd = FUNC5(netplay->listen_fd,
               (struct sockaddr*)&their_addr, &addr_size);

         if (new_fd < 0)
         {
            FUNC3("%s\n", FUNC12(MSG_NETPLAY_FAILED));
            goto process;
         }

         /* Set the socket nonblocking */
         if (!FUNC21(new_fd))
         {
            /* Catastrophe! */
            FUNC20(new_fd);
            goto process;
         }

#if defined(IPPROTO_TCP) && defined(TCP_NODELAY)
         {
            int flag = 1;
            if (setsockopt(new_fd, IPPROTO_TCP, TCP_NODELAY,
#ifdef _WIN32
               (const char*)
#else
               (const void*)
#endif
               &flag,
               sizeof(int)) < 0)
               RARCH_WARN("Could not set netplay TCP socket to nodelay. Expect jitter.\n");
         }
#endif

#if defined(F_SETFD) && defined(FD_CLOEXEC)
         /* Don't let any inherited processes keep open our port */
         if (fcntl(new_fd, F_SETFD, FD_CLOEXEC) < 0)
            RARCH_WARN("Cannot set Netplay port to close-on-exec. It may fail to reopen if the client disconnects.\n");
#endif

         /* Allocate a connection */
         for (connection_num = 0; connection_num < netplay->connections_size; connection_num++)
            if (!netplay->connections[connection_num].active &&
                  netplay->connections[connection_num].mode != NETPLAY_CONNECTION_DELAYED_DISCONNECT)
               break;
         if (connection_num == netplay->connections_size)
         {
            if (connection_num == 0)
            {
               netplay->connections = (struct netplay_connection*)
                  FUNC9(sizeof(struct netplay_connection));

               if (!netplay->connections)
               {
                  FUNC20(new_fd);
                  goto process;
               }
               netplay->connections_size = 1;

            }
            else
            {
               size_t new_connections_size = netplay->connections_size * 2;
               struct netplay_connection
                  *new_connections         = (struct netplay_connection*)

                  FUNC18(netplay->connections,
                     new_connections_size*sizeof(struct netplay_connection));

               if (!new_connections)
               {
                  FUNC20(new_fd);
                  goto process;
               }

               FUNC11(new_connections + netplay->connections_size, 0,
                  netplay->connections_size * sizeof(struct netplay_connection));
               netplay->connections = new_connections;
               netplay->connections_size = new_connections_size;

            }
         }
         connection         = &netplay->connections[connection_num];

         /* Set it up */
         FUNC11(connection, 0, sizeof(*connection));
         connection->active = true;
         connection->fd     = new_fd;
         connection->mode   = NETPLAY_CONNECTION_INIT;

         if (!FUNC16(&connection->send_packet_buffer,
               netplay->packet_buffer_size) ||
             !FUNC16(&connection->recv_packet_buffer,
               netplay->packet_buffer_size))
         {
            if (connection->send_packet_buffer.data)
               FUNC13(&connection->send_packet_buffer);
            connection->active = false;
            FUNC20(new_fd);
            goto process;
         }

         FUNC15(netplay, connection);

      }
   }

process:
   netplay->can_poll = true;
   FUNC8();

   return (netplay->stall != NETPLAY_STALL_NO_CONNECTION);
}