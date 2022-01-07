
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float x; float y; float w; float h; } ;
typedef TYPE_1__ video_layout_bounds_t ;



video_layout_bounds_t make_bounds_unit(void)
{
   video_layout_bounds_t bounds;
   bounds.x = 0.0f;
   bounds.y = 0.0f;
   bounds.w = 1.0f;
   bounds.h = 1.0f;
   return bounds;
}
