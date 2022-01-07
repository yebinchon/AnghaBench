
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t joy_idx; int auto_binds; int axis_threshold; } ;
typedef TYPE_2__ rarch_joypad_info_t ;
typedef int int16_t ;
struct TYPE_13__ {int movie_end; } ;
struct TYPE_12__ {int file; } ;
struct TYPE_8__ {size_t* input_joypad_map; } ;
struct TYPE_11__ {TYPE_1__ uints; } ;
struct TYPE_10__ {int (* input_state ) (int ,TYPE_2__,int ,unsigned int,unsigned int,unsigned int,unsigned int) ;} ;


 scalar_t__ BSV_MOVIE_IS_PLAYBACK_OFF () ;
 scalar_t__ BSV_MOVIE_IS_PLAYBACK_ON () ;
 unsigned int RARCH_FIRST_CUSTOM_BIND ;
 unsigned int RETRO_DEVICE_ID_JOYPAD_MASK ;
 unsigned int RETRO_DEVICE_JOYPAD ;
 unsigned int RETRO_DEVICE_MASK ;
 TYPE_7__ bsv_movie_state ;
 TYPE_6__* bsv_movie_state_handle ;
 TYPE_5__* configuration_settings ;
 TYPE_4__* current_input ;
 int current_input_data ;
 int * input_autoconf_binds ;
 int input_driver_axis_threshold ;
 int input_driver_block_libretro_input ;
 int input_driver_flushing_input ;
 int input_state_device (int,unsigned int,unsigned int,unsigned int,unsigned int,int) ;
 int intfstream_read (int ,int*,int) ;
 int intfstream_write (int ,int*,int) ;
 int libretro_input_binds ;
 int stub1 (int ,TYPE_2__,int ,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int swap_if_big16 (int) ;

__attribute__((used)) static int16_t input_state(unsigned port, unsigned device,
      unsigned idx, unsigned id)
{
   rarch_joypad_info_t joypad_info;
   int16_t result = 0;
   int16_t ret = 0;
   joypad_info.axis_threshold = input_driver_axis_threshold;
   joypad_info.joy_idx = configuration_settings->uints.input_joypad_map[port];
   joypad_info.auto_binds = input_autoconf_binds[joypad_info.joy_idx];

   if (BSV_MOVIE_IS_PLAYBACK_ON())
   {
      int16_t bsv_result;
      if (intfstream_read(bsv_movie_state_handle->file, &bsv_result, 2) == 2)
         return swap_if_big16(bsv_result);
      bsv_movie_state.movie_end = 1;
   }

   device &= RETRO_DEVICE_MASK;
   ret = current_input->input_state(
         current_input_data, joypad_info,
         libretro_input_binds, port, device, idx, id);

   if ( !input_driver_flushing_input
         && !input_driver_block_libretro_input)
   {
      if ( (device == RETRO_DEVICE_JOYPAD) &&
            (id == RETRO_DEVICE_ID_JOYPAD_MASK))
      {
         unsigned i;

         {
            for (i = 0; i < RARCH_FIRST_CUSTOM_BIND; i++)
               if (input_state_device(ret, port, device, idx, i, 1))
                  result |= (1 << i);
         }
      }
      else
         result = input_state_device(ret, port, device, idx, id, 0);
   }

   if (BSV_MOVIE_IS_PLAYBACK_OFF())
   {
      result = swap_if_big16(result);
      intfstream_write(bsv_movie_state_handle->file, &result, 2);
   }

   return result;
}
