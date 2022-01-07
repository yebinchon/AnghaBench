
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int enable; int fullscreen; } ;
struct TYPE_7__ {int height; int width; } ;
struct TYPE_6__ {int full_height; int full_width; } ;
struct TYPE_9__ {TYPE_3__ menu_texture; TYPE_2__ hw_scale; int win; scalar_t__ smooth; TYPE_1__ vp; } ;
typedef TYPE_4__ switch_video_t ;


 int clear_screen (TYPE_4__*) ;
 int nwindowSetDimensions (int ,int ,int ) ;

__attribute__((used)) static void switch_set_texture_enable(void *data, bool enable, bool full_screen)
{
    switch_video_t *sw = data;
    if (!sw->menu_texture.enable && enable)
        nwindowSetDimensions(sw->win, sw->vp.full_width, sw->vp.full_height);
    else if (!enable && sw->menu_texture.enable && sw->smooth)
    {
        clear_screen(sw);
        nwindowSetDimensions(sw->win, sw->hw_scale.width, sw->hw_scale.height);
    }
    sw->menu_texture.enable = enable;
    sw->menu_texture.fullscreen = full_screen;
}
