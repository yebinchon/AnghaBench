
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float alpha; float delay_timer; scalar_t__ height; scalar_t__ width; scalar_t__ texture; int status; } ;
typedef TYPE_1__ menu_thumbnail_t ;
typedef uintptr_t menu_animation_ctx_tag ;


 int MENU_THUMBNAIL_STATUS_UNKNOWN ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 int video_driver_texture_unload (scalar_t__*) ;

void menu_thumbnail_reset(menu_thumbnail_t *thumbnail)
{
   if (!thumbnail)
      return;

   if (thumbnail->texture)
   {
      menu_animation_ctx_tag tag = (uintptr_t)&thumbnail->alpha;


      video_driver_texture_unload(&thumbnail->texture);


      menu_animation_kill_by_tag(&tag);
   }


   thumbnail->status = MENU_THUMBNAIL_STATUS_UNKNOWN;
   thumbnail->texture = 0;
   thumbnail->width = 0;
   thumbnail->height = 0;
   thumbnail->alpha = 0.0f;
   thumbnail->delay_timer = 0.0f;
}
