
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float r; float g; float b; float a; } ;
typedef TYPE_1__ video_layout_color_t ;



video_layout_color_t make_color_v(float v)
{
   video_layout_color_t color;
   color.r = v;
   color.g = v;
   color.b = v;
   color.a = 1.0f;
   return color;
}
