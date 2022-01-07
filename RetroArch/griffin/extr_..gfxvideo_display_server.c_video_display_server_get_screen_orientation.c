
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum rotation { ____Placeholder_rotation } rotation ;
struct TYPE_2__ {int (* get_screen_orientation ) () ;} ;


 int ORIENTATION_NORMAL ;
 TYPE_1__* current_display_server ;
 int stub1 () ;

enum rotation video_display_server_get_screen_orientation(void)
{
   if (current_display_server && current_display_server->get_screen_orientation)
      return current_display_server->get_screen_orientation();
   return ORIENTATION_NORMAL;
}
