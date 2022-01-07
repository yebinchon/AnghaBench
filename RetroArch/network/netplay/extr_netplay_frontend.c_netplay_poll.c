
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
struct netplay_connection {int stall; scalar_t__ mode; scalar_t__ stall_time; scalar_t__ active; int stall_frame; } ;
struct TYPE_14__ {int netplay_input_latency_frames_min; int run_ahead_frames; int netplay_input_latency_frames_range; } ;
struct TYPE_13__ {scalar_t__ run_ahead_enabled; } ;
struct TYPE_15__ {TYPE_2__ uints; TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
typedef scalar_t__ retro_time_t ;
struct TYPE_16__ {int can_poll; scalar_t__ self_mode; int connected_players; scalar_t__ unread_frame_count; scalar_t__ run_frame_count; int frame_run_time_avg; int input_latency_frames; int stall; scalar_t__ self_frame_count; size_t connections_size; scalar_t__ stall_time; scalar_t__* read_frame_count; struct netplay_connection* connections; scalar_t__ is_server; scalar_t__ remote_paused; scalar_t__ stateless_mode; scalar_t__ connected_slaves; int run_ptr; } ;
typedef TYPE_4__ netplay_t ;


 int MAX_CLIENTS ;
 scalar_t__ MAX_CLIENT_STALL_TIME_USEC ;
 scalar_t__ MAX_SERVER_STALL_TIME_USEC ;
 scalar_t__ NETPLAY_CONNECTION_NONE ;
 scalar_t__ NETPLAY_CONNECTION_PLAYING ;
 scalar_t__ NETPLAY_CONNECTION_SLAVE ;
 scalar_t__ NETPLAY_CONNECTION_SPECTATING ;
 scalar_t__ NETPLAY_MAX_STALL_FRAMES ;

 void* NETPLAY_STALL_NONE ;




 TYPE_3__* config_get_ptr () ;
 scalar_t__ cpu_features_get_time_usec () ;
 int get_self_input_state (TYPE_4__*) ;
 int netplay_handle_slaves (TYPE_4__*) ;
 int netplay_hangup (TYPE_4__*,struct netplay_connection*) ;
 int netplay_poll_net_input (TYPE_4__*,int) ;
 int netplay_resolve_input (TYPE_4__*,int ,int) ;
 int netplay_update_unread_ptr (TYPE_4__*) ;

__attribute__((used)) static bool netplay_poll(netplay_t *netplay)
{
   int res;
   uint32_t client;
   size_t i;

   netplay->can_poll = 0;

   if (!get_self_input_state(netplay))
      goto catastrophe;


   if (netplay->self_mode == NETPLAY_CONNECTION_NONE)
      return 1;



   netplay_update_unread_ptr(netplay);
   if (netplay->stateless_mode &&
       (netplay->connected_players>1) &&
       netplay->unread_frame_count <= netplay->run_frame_count)
      res = netplay_poll_net_input(netplay, 1);
   else
      res = netplay_poll_net_input(netplay, 0);
   if (res == -1)
      goto catastrophe;


   netplay_resolve_input(netplay, netplay->run_ptr, 0);


   if (netplay->is_server && netplay->connected_slaves)
      netplay_handle_slaves(netplay);

   netplay_update_unread_ptr(netplay);



   if (netplay->frame_run_time_avg || netplay->stateless_mode)
   {

      unsigned frames_per_frame = netplay->frame_run_time_avg ?
         (16666 / netplay->frame_run_time_avg) :
         0;
      unsigned frames_ahead = (netplay->run_frame_count > netplay->unread_frame_count) ?
         (netplay->run_frame_count - netplay->unread_frame_count) :
         0;
      settings_t *settings = config_get_ptr();
      int input_latency_frames_min = settings->uints.netplay_input_latency_frames_min -
            (settings->bools.run_ahead_enabled ? settings->uints.run_ahead_frames : 0);
      int input_latency_frames_max = input_latency_frames_min + settings->uints.netplay_input_latency_frames_range;



      if (frames_per_frame > 2)
         frames_per_frame -= 2;
      else
         frames_per_frame = 0;


      if (netplay->stateless_mode)
      {


         if (netplay->input_latency_frames < input_latency_frames_min ||
               (netplay->unread_frame_count == netplay->run_frame_count + 1 &&
                netplay->input_latency_frames < input_latency_frames_max))
            netplay->input_latency_frames++;
         else if (netplay->input_latency_frames > input_latency_frames_max ||
               (netplay->unread_frame_count > netplay->run_frame_count + 2 &&
                netplay->input_latency_frames > input_latency_frames_min))
            netplay->input_latency_frames--;
      }
      else if (netplay->input_latency_frames < input_latency_frames_min ||
               (frames_per_frame < frames_ahead &&
                netplay->input_latency_frames < input_latency_frames_max))
      {


         netplay->input_latency_frames++;
      }
      else if (netplay->input_latency_frames > input_latency_frames_max ||
               (frames_per_frame > frames_ahead + 2 &&
                netplay->input_latency_frames > input_latency_frames_min))
      {

         netplay->input_latency_frames--;
      }
   }


   switch (netplay->stall)
   {
      case 130:
         {
            if (netplay->unread_frame_count + NETPLAY_MAX_STALL_FRAMES - 2
                  > netplay->self_frame_count)
            {
               netplay->stall = NETPLAY_STALL_NONE;
               for (i = 0; i < netplay->connections_size; i++)
               {
                  struct netplay_connection *connection = &netplay->connections[i];
                  if (connection->active && connection->stall)
                     connection->stall = NETPLAY_STALL_NONE;
               }
            }
            break;
         }

      case 128:
         if (netplay->self_mode == NETPLAY_CONNECTION_PLAYING || netplay->unread_frame_count > netplay->self_frame_count)
            netplay->stall = NETPLAY_STALL_NONE;
         break;

      case 132:

         netplay->stall = NETPLAY_STALL_NONE;
         break;

      case 129:

         if (netplay->connections[0].stall_frame == 0)
         {

            netplay->connections[0].stall = NETPLAY_STALL_NONE;
            netplay->stall = NETPLAY_STALL_NONE;
         }
         else
            netplay->connections[0].stall_frame--;
         break;
      case 131:

         break;
      default:
         break;
   }


   if (!netplay->stall)
   {

      if (netplay->self_mode == NETPLAY_CONNECTION_PLAYING &&
          netplay->connected_players &&
          netplay->run_frame_count + netplay->input_latency_frames > netplay->self_frame_count)
      {
         netplay->stall = 132;
         netplay->stall_time = 0;
      }


      if (netplay->unread_frame_count + NETPLAY_MAX_STALL_FRAMES
            <= netplay->self_frame_count)
      {
         netplay->stall = 130;
         netplay->stall_time = cpu_features_get_time_usec();


         if (netplay->is_server)
         {
            for (client = 1; client < MAX_CLIENTS; client++)
            {
               struct netplay_connection *connection;
               if (!(netplay->connected_players & (1<<client)))
                  continue;
               if (netplay->read_frame_count[client] > netplay->unread_frame_count)
                  continue;
               connection = &netplay->connections[client-1];
               if (connection->active &&
                   connection->mode == NETPLAY_CONNECTION_PLAYING)
               {
                  connection->stall = 130;
                  connection->stall_time = netplay->stall_time;
               }
            }
         }

      }


      if (!netplay->is_server &&
          (netplay->self_mode == NETPLAY_CONNECTION_SPECTATING ||
           netplay->self_mode == NETPLAY_CONNECTION_SLAVE) &&
          netplay->unread_frame_count <= netplay->self_frame_count)
      {
         netplay->stall = 128;
         netplay->stall_time = cpu_features_get_time_usec();
      }
   }


   if (netplay->stall && netplay->stall_time)
   {
      retro_time_t now = cpu_features_get_time_usec();


      if (netplay->remote_paused)
         netplay->stall_time = now;
      else if (now - netplay->stall_time >=
               (netplay->is_server ? MAX_SERVER_STALL_TIME_USEC :
                                          MAX_CLIENT_STALL_TIME_USEC))
      {

         if (netplay->is_server)
         {
            bool fixed = 0;
            for (i = 0; i < netplay->connections_size; i++)
            {
               struct netplay_connection *connection = &netplay->connections[i];
               if (connection->active &&
                   connection->mode == NETPLAY_CONNECTION_PLAYING &&
                   connection->stall)
               {
                  netplay_hangup(netplay, connection);
                  fixed = 1;
               }
            }

            if (fixed)
            {

               netplay->stall = NETPLAY_STALL_NONE;
               return 1;
            }
         }
         else
            goto catastrophe;
         return 0;
      }
   }

   return 1;

catastrophe:
   for (i = 0; i < netplay->connections_size; i++)
      netplay_hangup(netplay, &netplay->connections[i]);
   return 0;
}
