
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int y; int x; int height; int width; } ;
typedef TYPE_3__ video_viewport_t ;
struct TYPE_9__ {int video_aspect_ratio_idx; } ;
struct TYPE_12__ {TYPE_1__ uints; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_10__ {int y; int x; int height; int width; } ;
struct TYPE_13__ {TYPE_2__ viewport; int aspect_ratio_idx; } ;
typedef TYPE_5__ rgui_video_settings_t ;


 TYPE_4__* config_get_ptr () ;
 TYPE_3__* video_viewport_get_custom () ;

__attribute__((used)) static void rgui_get_video_config(rgui_video_settings_t *video_settings)
{
   settings_t *settings = config_get_ptr();


   video_viewport_t *custom_vp = video_viewport_get_custom();

   if (!settings)
      return;

   video_settings->aspect_ratio_idx = settings->uints.video_aspect_ratio_idx;
   video_settings->viewport.width = custom_vp->width;
   video_settings->viewport.height = custom_vp->height;
   video_settings->viewport.x = custom_vp->x;
   video_settings->viewport.y = custom_vp->y;
}
