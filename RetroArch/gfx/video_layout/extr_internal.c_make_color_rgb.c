
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float r; float g; float b; float a; } ;
typedef TYPE_1__ video_layout_color_t ;



video_layout_color_t make_color_rgb(float r, float g, float b)
{
   video_layout_color_t color;
   color.r = r;
   color.g = g;
   color.b = b;
   color.a = 1.0f;
   return color;
}
