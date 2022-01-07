
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ set_screen_orientation; } ;


 TYPE_1__* current_display_server ;

bool video_display_server_can_set_screen_orientation(void)
{
   if (current_display_server && current_display_server->set_screen_orientation)
      return 1;
   return 0;
}
