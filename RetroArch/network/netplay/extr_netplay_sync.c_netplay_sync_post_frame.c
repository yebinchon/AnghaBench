
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint32_t ;
struct netplay_connection {scalar_t__ mode; scalar_t__ stall_frame; int active; } ;
struct delta_frame {scalar_t__* real_input_state; scalar_t__* self_state; int * state; scalar_t__ have_remote; } ;
typedef scalar_t__ retro_time_t ;
struct TYPE_12__ {int size; int * data; int * data_const; } ;
typedef TYPE_1__ retro_ctx_serialize_info_t ;
struct TYPE_13__ {size_t run_ptr; scalar_t__ run_frame_count; scalar_t__ stall; scalar_t__ self_frame_count; scalar_t__ input_latency_frames; size_t self_ptr; int connected_players; scalar_t__ self_mode; scalar_t__ other_frame_count; size_t other_ptr; int catch_up; int force_reset; size_t replay_ptr; scalar_t__ replay_frame_count; int force_rewind; scalar_t__ unread_frame_count; int is_replay; int quirks; int frame_run_time_sum; size_t frame_run_time_ptr; int frame_run_time_avg; size_t unread_ptr; int* read_frame_count; int server_frame_count; scalar_t__ catch_up_time; int catch_up_behind; size_t connections_size; struct netplay_connection* connections; scalar_t__ is_server; scalar_t__* frame_run_time; struct delta_frame* buffer; int state_size; scalar_t__ have_updown_device; scalar_t__ desync; } ;
typedef TYPE_2__ netplay_t ;


 scalar_t__ CATCH_UP_CHECK_TIME_USEC ;
 int MAX_CLIENTS ;
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;
 scalar_t__ NETPLAY_CONNECTION_PLAYING ;
 int NETPLAY_FRAME_RUN_TIME_WINDOW ;
 scalar_t__ NETPLAY_MAX_REQ_STALL_FREQUENCY ;
 int NETPLAY_QUIRK_INITIALIZATION ;
 scalar_t__ NETPLAY_STALL_INPUT_LATENCY ;
 void* NEXT_PTR (size_t) ;
 size_t PREV_PTR (size_t) ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,scalar_t__,scalar_t__) ;
 int autosave_lock () ;
 int autosave_unlock () ;
 int core_reset () ;
 int core_run () ;
 int core_serialize (TYPE_1__*) ;
 int core_unserialize (TYPE_1__*) ;
 scalar_t__ cpu_features_get_time_usec () ;
 int driver_set_nonblock_state () ;
 int input_driver_set_nonblock_state () ;
 int input_driver_unset_nonblock_state () ;
 int memset (int *,int ,int ) ;
 int netplay_cmd_stall (TYPE_2__*,struct netplay_connection*,scalar_t__) ;
 scalar_t__ netplay_delta_frame_crc (TYPE_2__*,struct delta_frame*) ;
 scalar_t__ netplay_delta_frame_ready (TYPE_2__*,struct delta_frame*,scalar_t__) ;
 int netplay_handle_frame_hash (TYPE_2__*,struct delta_frame*) ;
 scalar_t__ netplay_resolve_input (TYPE_2__*,size_t,int) ;
 int netplay_wait_and_init_serialization (TYPE_2__*) ;

void netplay_sync_post_frame(netplay_t *netplay, bool stalled)
{
   uint32_t lo_frame_count, hi_frame_count;


   if (!stalled)
   {
      netplay->run_ptr = NEXT_PTR(netplay->run_ptr);
      netplay->run_frame_count++;
   }


   if ((!stalled || netplay->stall == NETPLAY_STALL_INPUT_LATENCY) &&
       netplay->self_frame_count <
       netplay->run_frame_count + netplay->input_latency_frames)
   {
      netplay->self_ptr = NEXT_PTR(netplay->self_ptr);
      netplay->self_frame_count++;
   }


   if ((netplay->is_server && (netplay->connected_players<=1)) ||
       (netplay->self_mode < NETPLAY_CONNECTION_CONNECTED) ||
       (netplay->desync))
   {
      netplay->other_frame_count = netplay->self_frame_count;
      netplay->other_ptr = netplay->self_ptr;


      if (netplay->catch_up)
      {
         netplay->catch_up = 0;
         input_driver_unset_nonblock_state();
         driver_set_nonblock_state();
      }
      return;
   }


   if (netplay->force_reset)
   {
      core_reset();
      netplay->force_reset = 0;
   }

   netplay->replay_ptr = netplay->other_ptr;
   netplay->replay_frame_count = netplay->other_frame_count;


   if (!netplay->force_rewind)
   {
      bool cont = 1;



      while (netplay->other_frame_count < netplay->unread_frame_count &&
             netplay->other_frame_count < netplay->run_frame_count)
      {
         struct delta_frame *ptr = &netplay->buffer[netplay->other_ptr];


         if (netplay_resolve_input(netplay, netplay->other_ptr, 1))
         {
            cont = 0;
            break;
         }

         netplay_handle_frame_hash(netplay, ptr);
         netplay->other_ptr = NEXT_PTR(netplay->other_ptr);
         netplay->other_frame_count++;
      }
      netplay->replay_ptr = netplay->other_ptr;
      netplay->replay_frame_count = netplay->other_frame_count;

      if (cont)
      {
         while (netplay->replay_frame_count < netplay->run_frame_count)
         {
            if (netplay_resolve_input(netplay, netplay->replay_ptr, 1))
               break;
            netplay->replay_ptr = NEXT_PTR(netplay->replay_ptr);
            netplay->replay_frame_count++;
         }
      }
   }



   if (netplay->force_rewind ||
       netplay->replay_frame_count < netplay->run_frame_count)
   {
      retro_ctx_serialize_info_t serial_info;


      netplay->is_replay = 1;




      if (netplay->have_updown_device)
      {
         netplay->replay_ptr = PREV_PTR(netplay->replay_ptr);
         netplay->replay_frame_count--;



         core_run();



         netplay->replay_ptr = NEXT_PTR(netplay->replay_ptr);
         netplay->replay_frame_count++;
      }

      if (netplay->quirks & NETPLAY_QUIRK_INITIALIZATION)

         netplay_wait_and_init_serialization(netplay);

      serial_info.data = ((void*)0);
      serial_info.data_const = netplay->buffer[netplay->replay_ptr].state;
      serial_info.size = netplay->state_size;

      if (!core_unserialize(&serial_info))
      {
         RARCH_ERR("Netplay savestate loading failed: Prepare for desync!\n");
      }

      while (netplay->replay_frame_count < netplay->run_frame_count)
      {
         retro_time_t start, tm;
         struct delta_frame *ptr = &netplay->buffer[netplay->replay_ptr];

         serial_info.data = ptr->state;
         serial_info.size = netplay->state_size;
         serial_info.data_const = ((void*)0);

         start = cpu_features_get_time_usec();


         memset(serial_info.data, 0, serial_info.size);
         core_serialize(&serial_info);
         if (netplay->replay_frame_count < netplay->unread_frame_count)
            netplay_handle_frame_hash(netplay, ptr);


         netplay_resolve_input(netplay, netplay->replay_ptr, 1);




         core_run();



         netplay->replay_ptr = NEXT_PTR(netplay->replay_ptr);
         netplay->replay_frame_count++;
         tm = cpu_features_get_time_usec() - start;
         netplay->frame_run_time_sum -= netplay->frame_run_time[netplay->frame_run_time_ptr];
         netplay->frame_run_time[netplay->frame_run_time_ptr] = tm;
         netplay->frame_run_time_sum += tm;
         netplay->frame_run_time_ptr++;
         if (netplay->frame_run_time_ptr >= NETPLAY_FRAME_RUN_TIME_WINDOW)
            netplay->frame_run_time_ptr = 0;
      }


      netplay->frame_run_time_avg = netplay->frame_run_time_sum / NETPLAY_FRAME_RUN_TIME_WINDOW;

      if (netplay->unread_frame_count < netplay->run_frame_count)
      {
         netplay->other_ptr = netplay->unread_ptr;
         netplay->other_frame_count = netplay->unread_frame_count;
      }
      else
      {
         netplay->other_ptr = netplay->run_ptr;
         netplay->other_frame_count = netplay->run_frame_count;
      }
      netplay->is_replay = 0;
      netplay->force_rewind = 0;
   }

   if (netplay->is_server)
   {
      uint32_t client;

      lo_frame_count = hi_frame_count = netplay->unread_frame_count;


      for (client = 0; client < MAX_CLIENTS; client++)
      {
         if (!(netplay->connected_players & (1<<client)))
            continue;
         if (netplay->read_frame_count[client] > hi_frame_count)
            hi_frame_count = netplay->read_frame_count[client];
      }
   }
   else
      lo_frame_count = hi_frame_count = netplay->server_frame_count;


   if (netplay->catch_up)
   {

      if (netplay->self_frame_count + 1 >= lo_frame_count)
      {
         netplay->catch_up = 0;
         input_driver_unset_nonblock_state();
         driver_set_nonblock_state();
      }

   }
   else if (!stalled)
   {
      if (netplay->self_frame_count + 3 < lo_frame_count)
      {
         retro_time_t cur_time = cpu_features_get_time_usec();
         uint32_t cur_behind = lo_frame_count - netplay->self_frame_count;



         if (netplay->catch_up_time == 0)
         {

            netplay->catch_up_time = cur_time;
            netplay->catch_up_behind = cur_behind;

         }
         else if (cur_time - netplay->catch_up_time > CATCH_UP_CHECK_TIME_USEC)
         {

            if (netplay->catch_up_behind <= cur_behind)
            {

               netplay->catch_up = 1;
               netplay->catch_up_time = 0;
               input_driver_set_nonblock_state();
               driver_set_nonblock_state();
            }
            else
            {

               netplay->catch_up_time = cur_time;
               netplay->catch_up_behind = cur_behind;
            }
         }

      }
      else if (netplay->self_frame_count + 3 < hi_frame_count)
      {
         size_t i;
         netplay->catch_up_time = 0;



         for (i = 0; i < netplay->connections_size; i++)
         {
            uint32_t client_num;
            struct netplay_connection *connection = &netplay->connections[i];

            if (!connection->active ||
                connection->mode != NETPLAY_CONNECTION_PLAYING)
               continue;

            client_num = (uint32_t)(i + 1);


            if (netplay->self_frame_count + 3 < netplay->read_frame_count[client_num])
            {

               if (connection->stall_frame + NETPLAY_MAX_REQ_STALL_FREQUENCY <
                     netplay->self_frame_count)
               {
                  connection->stall_frame = netplay->self_frame_count;
                  netplay_cmd_stall(netplay, connection,
                     netplay->read_frame_count[client_num] -
                     netplay->self_frame_count + 1);
               }
            }
         }
      }
      else
         netplay->catch_up_time = 0;
   }
   else
      netplay->catch_up_time = 0;
}
