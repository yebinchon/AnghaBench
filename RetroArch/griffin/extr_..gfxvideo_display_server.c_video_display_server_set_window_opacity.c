
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_window_opacity ) (int ,unsigned int) ;} ;


 TYPE_1__* current_display_server ;
 int current_display_server_data ;
 int stub1 (int ,unsigned int) ;

bool video_display_server_set_window_opacity(unsigned opacity)
{
   if (current_display_server && current_display_server->set_window_opacity)
      return current_display_server->set_window_opacity(current_display_server_data, opacity);
   return 0;
}
