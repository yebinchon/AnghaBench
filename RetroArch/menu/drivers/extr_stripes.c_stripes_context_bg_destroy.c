
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bg; } ;
struct TYPE_5__ {TYPE_1__ textures; } ;
typedef TYPE_2__ stripes_handle_t ;


 int menu_display_white_texture ;
 int video_driver_texture_unload (int *) ;

__attribute__((used)) static void stripes_context_bg_destroy(stripes_handle_t *stripes)
{
   if (!stripes)
      return;
   video_driver_texture_unload(&stripes->textures.bg);
   video_driver_texture_unload(&menu_display_white_texture);
}
