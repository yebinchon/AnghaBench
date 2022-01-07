
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int change_renderer (int ) ;
 int vid_reset_mode () ;

void plat_video_loop_prepare(void)
{

 change_renderer(0);
 vid_reset_mode();
}
