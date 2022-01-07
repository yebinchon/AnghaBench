
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clip_rect_x_max ;
 int clip_rect_x_min ;
 int clip_rect_y_max ;
 int clip_rect_y_min ;

void vita2d_get_clip_rectangle(int *x_min, int *y_min, int *x_max, int *y_max)
{
 *x_min = clip_rect_x_min;
 *y_min = clip_rect_y_min;
 *x_max = clip_rect_x_max;
 *y_max = clip_rect_y_max;
}
