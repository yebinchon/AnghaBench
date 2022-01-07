
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* destroy ) (scalar_t__) ;} ;


 TYPE_1__* current_display_server ;
 scalar_t__ current_display_server_data ;
 scalar_t__ current_screen_orientation ;
 scalar_t__ initial_screen_orientation ;
 int stub1 (scalar_t__) ;
 int video_display_server_set_screen_orientation (scalar_t__) ;

void video_display_server_destroy(void)
{
   if (initial_screen_orientation != current_screen_orientation)
      video_display_server_set_screen_orientation(initial_screen_orientation);

   if (current_display_server && current_display_server->destroy)
      if (current_display_server_data)
         current_display_server->destroy(current_display_server_data);
}
