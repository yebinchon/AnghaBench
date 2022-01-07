
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_window_progress ) (int ,int,int) ;} ;


 TYPE_1__* current_display_server ;
 int current_display_server_data ;
 int stub1 (int ,int,int) ;

bool video_display_server_set_window_progress(int progress, bool finished)
{
   if (current_display_server && current_display_server->set_window_progress)
      return current_display_server->set_window_progress(current_display_server_data, progress, finished);
   return 0;
}
