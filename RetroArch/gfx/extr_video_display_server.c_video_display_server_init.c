
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef enum rarch_display_type { ____Placeholder_rarch_display_type } rarch_display_type ;
struct TYPE_6__ {int ident; void* (* init ) () ;} ;




 int RARCH_LOG (char*,int ) ;
 TYPE_1__* current_display_server ;
 void* current_display_server_data ;
 int current_screen_orientation ;
 TYPE_1__ dispserv_android ;
 TYPE_1__ dispserv_null ;
 TYPE_1__ dispserv_win32 ;
 TYPE_1__ dispserv_x11 ;
 int initial_screen_orientation ;
 void* stub1 () ;
 int video_display_server_destroy () ;
 int video_display_server_get_screen_orientation () ;
 int video_driver_display_type_get () ;

void* video_display_server_init(void)
{
   enum rarch_display_type type = video_driver_display_type_get();

   video_display_server_destroy();

   switch (type)
   {
      case 129:



         break;
      case 128:



         break;
      default:



         current_display_server = &dispserv_null;

         break;
   }

   current_display_server_data = current_display_server->init();

   RARCH_LOG("[Video]: Found display server: %s\n",
     current_display_server->ident);

   initial_screen_orientation = video_display_server_get_screen_orientation();
   current_screen_orientation = initial_screen_orientation;

   return current_display_server_data;
}
