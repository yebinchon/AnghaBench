
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ gfx_ctx_flags_t ;
struct TYPE_5__ {int (* get_flags ) (int ) ;} ;


 TYPE_3__* current_display_server ;
 int current_display_server_data ;
 int stub1 (int ) ;

bool video_display_server_get_flags(gfx_ctx_flags_t *flags)
{
   if (!current_display_server || !current_display_server->get_flags)
      return 0;
   if (!flags)
      return 0;

   flags->flags = current_display_server->get_flags(
         current_display_server_data);
   return 1;
}
