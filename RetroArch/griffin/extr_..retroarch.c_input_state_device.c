
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_16__ {int input_remap_binds_enable; } ;
struct TYPE_15__ {unsigned int** input_remap_ids; int input_turbo_period; int input_turbo_duty_cycle; } ;
struct TYPE_17__ {TYPE_2__ bools; TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
typedef int int16_t ;
struct TYPE_18__ {int** analog; } ;
typedef TYPE_4__ input_remote_state_t ;
struct TYPE_19__ {int* analog; int buttons; } ;
typedef TYPE_5__ input_overlay_state_t ;
struct TYPE_22__ {int* enable; int count; int * frame_enable; } ;
struct TYPE_21__ {int valid; } ;
struct TYPE_20__ {int alive; TYPE_5__ overlay_state; } ;
struct TYPE_14__ {int** analog_value; int * buttons; } ;


 int BIT256_GET (int ,unsigned int) ;
 int MAPPER_GET_KEY (TYPE_10__*,unsigned int) ;
 int OVERLAY_GET_KEY (TYPE_5__*,unsigned int) ;
 int RARCH_FIRST_CUSTOM_BIND ;
 unsigned int RARCH_FIRST_META_KEY ;
 unsigned int RETROK_LAST ;

 unsigned int RETRO_DEVICE_ID_ANALOG_Y ;
 unsigned int RETRO_DEVICE_ID_JOYPAD_RIGHT ;
 unsigned int RETRO_DEVICE_ID_JOYPAD_UP ;
 unsigned int RETRO_DEVICE_INDEX_ANALOG_RIGHT ;





 TYPE_3__* configuration_settings ;
 TYPE_10__* input_driver_mapper ;
 int input_driver_remote ;
 TYPE_9__ input_driver_turbo_btns ;
 int input_remote_key_pressed (unsigned int,unsigned int) ;
 TYPE_8__** libretro_input_binds ;
 TYPE_7__* overlay_ptr ;
 TYPE_4__ remote_st_ptr ;

__attribute__((used)) static int16_t input_state_device(
      int16_t ret,
      unsigned port, unsigned device,
      unsigned idx, unsigned id,
      bool button_mask)
{
   int16_t res = 0;
   settings_t *settings = configuration_settings;





   switch (device)
   {
      case 132:
         if (id < RARCH_FIRST_META_KEY




            )
         {
            bool bind_valid = libretro_input_binds[port]
               && libretro_input_binds[port][id].valid;

            if (settings->bools.input_remap_binds_enable &&
                  id != settings->uints.input_remap_ids[port][id])
               res = 0;
            else if (bind_valid)
            {
               if (button_mask)
               {
                  res = 0;
                  if (ret & (1 << id))
                     res |= (1 << id);
               }
               else
                  res = ret;
            }
         }

         if (settings->bools.input_remap_binds_enable && input_driver_mapper)
            if (BIT256_GET(input_driver_mapper->buttons[port], id))
               res = 1;


         if ((id < RETRO_DEVICE_ID_JOYPAD_UP || id > RETRO_DEVICE_ID_JOYPAD_RIGHT))
         {
            if (res && input_driver_turbo_btns.frame_enable[port])
               input_driver_turbo_btns.enable[port] |= (1 << id);
            else if (!res)
               input_driver_turbo_btns.enable[port] &= ~(1 << id);

            if (input_driver_turbo_btns.enable[port] & (1 << id))
            {

               res = res && ((input_driver_turbo_btns.count
                        % settings->uints.input_turbo_period)
                     < settings->uints.input_turbo_duty_cycle);
            }
         }

         break;

      case 129:

         if (id < RARCH_FIRST_META_KEY)
         {
            bool bind_valid = libretro_input_binds[port]
               && libretro_input_binds[port][id].valid;

            if (bind_valid)
            {
               if (button_mask)
               {
                  res = 0;
                  if (ret & (1 << id))
                     res |= (1 << id);
               }
               else
                  res = ret;
            }
         }

         break;

      case 131:

         res = ret;
         if (settings->bools.input_remap_binds_enable && input_driver_mapper)
            if (id < RETROK_LAST)
               if (MAPPER_GET_KEY(input_driver_mapper, id))
                  res |= 1;

         break;

      case 130:

         if (id < RARCH_FIRST_META_KEY)
         {
            bool bind_valid = libretro_input_binds[port]
               && libretro_input_binds[port][id].valid;

            if (bind_valid)
            {
               if (button_mask)
               {
                  res = 0;
                  if (ret & (1 << id))
                     res |= (1 << id);
               }
               else
                  res = ret;
            }
         }

         break;

      case 133:

         {
            if (id < RARCH_FIRST_META_KEY



                )
            {
               bool bind_valid = libretro_input_binds[port]
                  && libretro_input_binds[port][id].valid;

               if (bind_valid)
               {


                  bool reset_state = 0;
                  if (settings->bools.input_remap_binds_enable)
                  {
                     if (idx < 2 && id < 2)
                     {
                        unsigned offset = RARCH_FIRST_CUSTOM_BIND +
                           (idx * 4) + (id * 2);

                        if (settings->uints.input_remap_ids
                              [port][offset] != offset)
                           reset_state = 1;
                        else if (settings->uints.input_remap_ids
                              [port][offset+1] != (offset+1))
                           reset_state = 1;
                     }
                  }

                  if (!reset_state)
                  {
                     res = ret;





                  }
                  else
                     res = 0;
               }
            }

            if (settings->bools.input_remap_binds_enable && input_driver_mapper)
            {
               if (idx < 2 && id < 2)
               {
                  int val = 0;
                  unsigned offset = 0 + (idx * 4) + (id * 2);
                  int val1 = input_driver_mapper->analog_value[port][offset];
                  int val2 = input_driver_mapper->analog_value[port][offset+1];

                  if (val1)
                     val = val1;
                  else if (val2)
                     val = val2;

                  if (val1 || val2)
                     res |= val;
               }
            }
         }
         break;

      case 128:

         if (id < RARCH_FIRST_META_KEY)
         {
            bool bind_valid = libretro_input_binds[port]
               && libretro_input_binds[port][id].valid;

            if (bind_valid)
            {
               if (button_mask)
               {
                  res = 0;
                  if (ret & (1 << id))
                     res |= (1 << id);
               }
               else
                  res = ret;
            }
         }

         break;
   }

   return res;
}
