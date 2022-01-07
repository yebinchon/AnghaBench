
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int caca_video_height ;
 int caca_video_width ;
 int video_driver_set_size (int *,int *) ;

__attribute__((used)) static bool caca_gfx_alive(void *data)
{
   (void)data;
   video_driver_set_size(&caca_video_width, &caca_video_height);
   return 1;
}
