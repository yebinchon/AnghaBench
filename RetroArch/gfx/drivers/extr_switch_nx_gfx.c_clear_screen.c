
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int full_height; int full_width; } ;
struct TYPE_5__ {int fb; TYPE_1__ vp; int win; } ;
typedef TYPE_2__ switch_video_t ;


 scalar_t__ framebufferBegin (int *,int*) ;
 int framebufferEnd (int *) ;
 int memset (int*,int ,int) ;
 int nwindowSetDimensions (int ,int ,int ) ;

__attribute__((used)) static void clear_screen(switch_video_t *sw)
{
    nwindowSetDimensions(sw->win, sw->vp.full_width, sw->vp.full_height);

    uint32_t stride;

    uint32_t *out_buffer = (uint32_t*)framebufferBegin(&sw->fb, &stride);

    memset(out_buffer, 0, stride * 720);

    framebufferEnd(&sw->fb);
}
