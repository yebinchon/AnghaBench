
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* (* get_resolution_list ) (int ,unsigned int*) ;} ;


 TYPE_1__* current_display_server ;
 int current_display_server_data ;
 void* stub1 (int ,unsigned int*) ;
 scalar_t__ video_display_server_has_resolution_list () ;

void *video_display_server_get_resolution_list(unsigned *size)
{
   if (video_display_server_has_resolution_list())
      return current_display_server->get_resolution_list(current_display_server_data, size);
   return ((void*)0);
}
