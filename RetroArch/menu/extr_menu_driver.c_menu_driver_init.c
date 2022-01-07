
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* context_reset ) (int ,int) ;} ;


 int CMD_EVENT_CORE_INFO_INIT ;
 int CMD_EVENT_LOAD_CORE_PERSIST ;
 int command_event (int ,int *) ;
 TYPE_1__* menu_driver_ctx ;
 scalar_t__ menu_driver_data ;
 scalar_t__ menu_driver_init_internal (int) ;
 int menu_userdata ;
 int stub1 (int ,int) ;

bool menu_driver_init(bool video_is_threaded)
{
   command_event(CMD_EVENT_CORE_INFO_INIT, ((void*)0));
   command_event(CMD_EVENT_LOAD_CORE_PERSIST, ((void*)0));

   if ( menu_driver_data ||
         menu_driver_init_internal(video_is_threaded))
   {
      if (menu_driver_ctx && menu_driver_ctx->context_reset)
      {
         menu_driver_ctx->context_reset(menu_userdata, video_is_threaded);
         return 1;
      }
   }

   return 0;
}
