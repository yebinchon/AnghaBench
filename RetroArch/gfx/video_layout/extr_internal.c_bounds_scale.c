
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h; int w; int y; int x; } ;
typedef TYPE_1__ video_layout_bounds_t ;



void bounds_scale(
      video_layout_bounds_t *dst,
      const video_layout_bounds_t *dim)
{
   dst->x *= dim->w;
   dst->y *= dim->h;
   dst->w *= dim->w;
   dst->h *= dim->h;
}
