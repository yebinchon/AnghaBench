
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int video_driver_set_viewport (unsigned int,unsigned int,int,int) ;

void menu_display_unset_viewport(unsigned width, unsigned height)
{
   video_driver_set_viewport(width, height, 0, 1);
}
