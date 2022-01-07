
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int a; int b; int g; int r; } ;
typedef TYPE_1__ video_layout_color_t ;



void color_mod(video_layout_color_t *dst, const video_layout_color_t *src)
{
   dst->r *= src->r;
   dst->g *= src->g;
   dst->b *= src->b;
   dst->a *= src->a;
}
