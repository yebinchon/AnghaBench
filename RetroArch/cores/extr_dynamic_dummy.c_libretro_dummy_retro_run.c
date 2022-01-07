
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dummy_frame_buf ;
 int dummy_input_poll_cb () ;
 int dummy_video_cb (int ,int,int ,int) ;
 int frame_buf_height ;
 int frame_buf_width ;

void libretro_dummy_retro_run(void)
{
   dummy_input_poll_cb();
   dummy_video_cb(dummy_frame_buf, frame_buf_width, frame_buf_height, 2 * frame_buf_width);
}
