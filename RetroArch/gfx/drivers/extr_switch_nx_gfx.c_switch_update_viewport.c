
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_12__ {float full_width; float full_height; int x; int y; float width; float height; } ;
struct TYPE_10__ {float o_width; float o_height; TYPE_5__ vp; int keep_aspect; scalar_t__ o_size; } ;
typedef TYPE_3__ switch_video_t ;
struct TYPE_9__ {scalar_t__ video_aspect_ratio_idx; } ;
struct TYPE_8__ {scalar_t__ video_scale_integer; } ;
struct TYPE_11__ {TYPE_2__ uints; TYPE_1__ bools; } ;
typedef TYPE_4__ settings_t ;


 scalar_t__ ASPECT_RATIO_CUSTOM ;
 TYPE_4__* config_get_ptr () ;
 float fabsf (float) ;
 int printf (char*,float) ;
 scalar_t__ roundf (float) ;
 float video_driver_get_aspect_ratio () ;
 int video_viewport_get_scaled_integer (TYPE_5__*,float,float,float,int ) ;

__attribute__((used)) static void switch_update_viewport(switch_video_t *sw,
            video_frame_info_t *video_info)
{
    settings_t *settings = config_get_ptr();
    int x = 0;
    int y = 0;
    float desired_aspect = 0.0f;
    float width = sw->vp.full_width;
    float height = sw->vp.full_height;

    if (sw->o_size)
    {
        width = sw->o_width;
        height = sw->o_height;
        sw->vp.x = (int)(((float)sw->vp.full_width - width)) / 2;
        sw->vp.y = (int)(((float)sw->vp.full_height - height)) / 2;

        sw->vp.width = width;
        sw->vp.height = height;

        return;
    }

    desired_aspect = video_driver_get_aspect_ratio();


    printf("[Video] Aspect: %f\n", desired_aspect);






    if (settings->bools.video_scale_integer)
    {
        video_viewport_get_scaled_integer(&sw->vp, sw->vp.full_width, sw->vp.full_height, desired_aspect, sw->keep_aspect);
    }
    else if (sw->keep_aspect)
    {
        {
            float delta;
            float device_aspect = ((float)sw->vp.full_width) / sw->vp.full_height;

            if (fabsf(device_aspect - desired_aspect) < 0.0001f)
            {





            }
            else if (device_aspect > desired_aspect)
            {
                delta = (desired_aspect / device_aspect - 1.0f) / 2.0f + 0.5f;
                x = (int)roundf(width * (0.5f - delta));
                width = (unsigned)roundf(2.0f * width * delta);
            }
            else
            {
                delta = (device_aspect / desired_aspect - 1.0f) / 2.0f + 0.5f;
                y = (int)roundf(height * (0.5f - delta));
                height = (unsigned)roundf(2.0f * height * delta);
            }
        }

        sw->vp.x = x;
        sw->vp.y = y;

        sw->vp.width = width;
        sw->vp.height = height;
    }
    else
    {
        sw->vp.x = sw->vp.y = 0;
        sw->vp.width = width;
        sw->vp.height = height;
    }
}
