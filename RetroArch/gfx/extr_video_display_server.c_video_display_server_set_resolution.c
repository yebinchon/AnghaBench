
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_resolution ) (int ,unsigned int,unsigned int,int,float,int,int,int) ;} ;


 TYPE_1__* current_display_server ;
 int current_display_server_data ;
 int stub1 (int ,unsigned int,unsigned int,int,float,int,int,int) ;

bool video_display_server_set_resolution(unsigned width, unsigned height,
      int int_hz, float hz, int center, int monitor_index, int xoffset)
{
   if (current_display_server && current_display_server->set_resolution)
      return current_display_server->set_resolution(current_display_server_data, width, height, int_hz, hz, center, monitor_index, xoffset);
   return 0;
}
