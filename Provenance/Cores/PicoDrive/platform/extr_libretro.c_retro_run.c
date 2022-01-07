
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoFrame () ;
 int * PicoPad ;
 int RETRO_DEVICE_JOYPAD ;
 int RETRO_ENVIRONMENT_GET_VARIABLE_UPDATE ;
 int RETRO_PICO_MAP_LEN ;
 scalar_t__ environ_cb (int ,int*) ;
 int input_poll_cb () ;
 scalar_t__ input_state_cb (int,int ,int ,int) ;
 int * retro_pico_map ;
 int update_variables () ;
 int video_cb (short*,int,int ,int) ;
 scalar_t__ vout_buf ;
 int vout_height ;
 int vout_offset ;
 int vout_width ;

void retro_run(void)
{
 bool updated = 0;
 int pad, i;

 if (environ_cb(RETRO_ENVIRONMENT_GET_VARIABLE_UPDATE, &updated) && updated)
  update_variables();

 input_poll_cb();

 PicoPad[0] = PicoPad[1] = 0;
 for (pad = 0; pad < 2; pad++)
  for (i = 0; i < RETRO_PICO_MAP_LEN; i++)
   if (input_state_cb(pad, RETRO_DEVICE_JOYPAD, 0, i))
    PicoPad[pad] |= retro_pico_map[i];

 PicoFrame();

 video_cb((short *)vout_buf + vout_offset,
  vout_width, vout_height, vout_width * 2);
}
