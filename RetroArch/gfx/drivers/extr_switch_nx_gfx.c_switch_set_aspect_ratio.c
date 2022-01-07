
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int keep_aspect; int o_size; int should_resize; } ;
typedef TYPE_2__ switch_video_t ;
struct TYPE_5__ {int video_scale_integer; } ;
struct TYPE_7__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;




 TYPE_3__* config_get_ptr () ;
 int video_driver_set_viewport_core () ;

__attribute__((used)) static void switch_set_aspect_ratio(void *data, unsigned aspect_ratio_idx)
{
    settings_t *settings = config_get_ptr();
    switch_video_t *sw = (switch_video_t *)data;

    if (!sw)
        return;

    sw->keep_aspect = 1;
    sw->o_size = 0;

    switch (aspect_ratio_idx)
    {
       case 129:
          sw->o_size = 1;
          sw->keep_aspect = 0;
          break;

       case 128:
          if (settings->bools.video_scale_integer)
          {
             video_driver_set_viewport_core();
             sw->o_size = 1;
             sw->keep_aspect = 0;
          }
          break;

       default:
          break;
    }


    sw->should_resize = 1;
}
