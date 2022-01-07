
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clip_rect_x_max ;
 int clip_rect_x_min ;
 int clip_rect_y_max ;
 int clip_rect_y_min ;
 int clipping_enabled ;
 int vita2d_set_clip_rectangle (int ,int ,int ,int ) ;

void vita2d_enable_clipping()
{
 clipping_enabled = 1;
 vita2d_set_clip_rectangle(clip_rect_x_min, clip_rect_y_min, clip_rect_x_max, clip_rect_y_max);
}
