
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gp2x_video_wait_vsync () ;

void plat_video_wait_vsync(void)
{
 gp2x_video_wait_vsync();
}
