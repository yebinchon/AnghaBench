
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float fly_aspect ;
 int video_driver_set_aspect_ratio_value (float) ;

void crt_aspect_ratio_switch(unsigned width, unsigned height)
{

   fly_aspect = (float)width / height;
   video_driver_set_aspect_ratio_value((float)fly_aspect);
}
