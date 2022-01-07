
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum rotation { ____Placeholder_rotation } rotation ;
struct TYPE_2__ {int (* set_screen_orientation ) (int) ;} ;


 int RARCH_LOG (char*,int) ;
 TYPE_1__* current_display_server ;
 int current_screen_orientation ;
 int stub1 (int) ;

void video_display_server_set_screen_orientation(enum rotation rotation)
{
   if (current_display_server && current_display_server->set_screen_orientation)
   {
      RARCH_LOG("[Video]: Setting screen orientation to %d.\n", rotation);
      current_screen_orientation = rotation;
      current_display_server->set_screen_orientation(rotation);
   }
}
