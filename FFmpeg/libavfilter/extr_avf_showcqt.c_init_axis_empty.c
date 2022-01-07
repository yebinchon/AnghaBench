
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int axis_h; int width; int format; int axis_frame; } ;
typedef TYPE_1__ ShowCQTContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int alloc_frame_empty (int ,int ,int ) ;
 int convert_axis_pixel_format (int ) ;

__attribute__((used)) static int init_axis_empty(ShowCQTContext *s)
{
    if (!(s->axis_frame = alloc_frame_empty(convert_axis_pixel_format(s->format), s->width, s->axis_h)))
        return AVERROR(ENOMEM);
    return 0;
}
