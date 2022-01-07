
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct netplay_connection {scalar_t__ mode; scalar_t__ active; } ;
struct delta_frame {int have_local; int* have_real; int * real_input; } ;
typedef int (* retro_input_state_t ) (int,int const,unsigned int,unsigned int) ;
struct TYPE_10__ {int (* state_cb ) (int,int const,unsigned int,unsigned int) ;} ;
struct TYPE_11__ {size_t self_ptr; int self_devices; int* config_devices; scalar_t__ self_mode; size_t self_client_num; unsigned int connections_size; scalar_t__ is_server; struct netplay_connection* connections; int self_frame_count; scalar_t__* read_frame_count; int * read_ptr; TYPE_1__ cbs; struct delta_frame* buffer; } ;
typedef TYPE_2__ netplay_t ;
typedef TYPE_3__* netplay_input_state_t ;
typedef int int16_t ;
struct TYPE_12__ {int* data; unsigned int size; } ;


 size_t MAX_CLIENTS ;
 int MAX_INPUT_DEVICES ;
 scalar_t__ NETPLAY_CONNECTION_CONNECTED ;
 scalar_t__ NETPLAY_CONNECTION_PLAYING ;
 scalar_t__ NETPLAY_CONNECTION_SLAVE ;
 unsigned int NETPLAY_KEY_LAST ;
 int NEXT_PTR (size_t) ;

 unsigned int RETRO_DEVICE_ID_JOYPAD_R3 ;
 int RETRO_DEVICE_ID_LIGHTGUN_START ;
 int RETRO_DEVICE_ID_MOUSE_HORIZ_WHEELDOWN ;



 int RETRO_DEVICE_MASK ;

 int input_driver_is_libretro_input_blocked () ;
 int netplay_delayed_state_change (TYPE_2__*) ;
 int netplay_delta_frame_ready (TYPE_2__*,struct delta_frame*,int ) ;
 int netplay_expected_input_size (TYPE_2__*,int) ;
 TYPE_3__* netplay_input_state_for (int *,size_t,int ,int,int) ;
 unsigned int netplay_key_ntoh (unsigned int) ;
 int netplay_send_cur_input (TYPE_2__*,struct netplay_connection*) ;

__attribute__((used)) static bool get_self_input_state(netplay_t *netplay)
{
   unsigned i;
   struct delta_frame *ptr = &netplay->buffer[netplay->self_ptr];
   netplay_input_state_t istate = ((void*)0);
   uint32_t devices, used_devices = 0, devi, dev_type, local_device;

   if (!netplay_delta_frame_ready(netplay, ptr, netplay->self_frame_count))
      return 0;


   if (ptr->have_local)
      return 1;

   devices = netplay->self_devices;
   used_devices = 0;

   for (devi = 0; devi < MAX_INPUT_DEVICES; devi++)
   {
      if (!(devices & (1<<devi)))
         continue;


      dev_type = netplay->config_devices[devi]&RETRO_DEVICE_MASK;

      for (local_device = 0; local_device < MAX_INPUT_DEVICES; local_device++)
      {
         if (used_devices & (1<<local_device))
            continue;
         if ((netplay->config_devices[local_device]&RETRO_DEVICE_MASK) == dev_type)
            break;
      }

      if (local_device == MAX_INPUT_DEVICES)
         local_device = 0;
      used_devices |= (1<<local_device);

      istate = netplay_input_state_for(&ptr->real_input[devi],

            (netplay->self_mode==NETPLAY_CONNECTION_SLAVE)?MAX_CLIENTS:netplay->self_client_num,
            netplay_expected_input_size(netplay, 1 << devi),
            1, 0);
      if (!istate)
         continue;



      if (!input_driver_is_libretro_input_blocked() && netplay->self_frame_count > 0)
      {
         uint32_t *state = istate->data;
         retro_input_state_t cb = netplay->cbs.state_cb;
         unsigned dtype = netplay->config_devices[devi]&RETRO_DEVICE_MASK;

         switch (dtype)
         {
            case 132:
               for (i = 0; i < 2; i++)
               {
                  int16_t tmp_x = cb(local_device,
                        132, (unsigned)i, 0);
                  int16_t tmp_y = cb(local_device,
                        132, (unsigned)i, 1);
                  state[1 + i] = (uint16_t)tmp_x | (((uint16_t)tmp_y) << 16);
               }


            case 131:
               for (i = 0; i <= RETRO_DEVICE_ID_JOYPAD_R3; i++)
               {
                  int16_t tmp = cb(local_device,
                        131, 0, (unsigned)i);
                  state[0] |= tmp ? 1 << i : 0;
               }
               break;

            case 128:
            case 129:
            {
               int16_t tmp_x = cb(local_device, dtype, 0, 0);
               int16_t tmp_y = cb(local_device, dtype, 0, 1);
               state[1] = (uint16_t)tmp_x | (((uint16_t)tmp_y) << 16);
               for (i = 2;
                     i <= (unsigned)((dtype == 128) ?
                           RETRO_DEVICE_ID_MOUSE_HORIZ_WHEELDOWN :
                           RETRO_DEVICE_ID_LIGHTGUN_START);
                     i++)
               {
                  int16_t tmp = cb(local_device, dtype, 0,
                        (unsigned) i);
                  state[0] |= tmp ? 1 << i : 0;
               }
               break;
            }

            case 130:
            {
               unsigned key, word = 0, bit = 1;
               for (key = 1; key < NETPLAY_KEY_LAST; key++)
               {
                  state[word] |=
                        cb(local_device, 130, 0, netplay_key_ntoh(key)) ?
                              (1U << bit) : 0;
                  bit++;
                  if (bit >= 32)
                  {
                     bit = 0;
                     word++;
                     if (word >= istate->size)
                        break;
                  }
               }
               break;
            }
         }
      }
   }

   ptr->have_local = 1;
   if (netplay->self_mode == NETPLAY_CONNECTION_PLAYING)
   {
      ptr->have_real[netplay->self_client_num] = 1;
      netplay->read_ptr[netplay->self_client_num] = NEXT_PTR(netplay->self_ptr);
      netplay->read_frame_count[netplay->self_client_num] = netplay->self_frame_count + 1;
   }


   for (i = 0; i < netplay->connections_size; i++)
   {
      struct netplay_connection *connection = &netplay->connections[i];
      if (connection->active && connection->mode >= NETPLAY_CONNECTION_CONNECTED)
         netplay_send_cur_input(netplay, &netplay->connections[i]);
   }


   if (netplay->is_server)
      netplay_delayed_state_change(netplay);

   return 1;
}
