
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vita2d_texture ;


 int draw_texture_scale_rotate_hotspot_generic (int const*,float,float,float,float,float,float,float) ;
 int set_texture_tint_color_uniform (unsigned int) ;
 int set_texture_tint_program () ;
 int set_texture_wvp_uniform () ;

void vita2d_draw_texture_tint_scale_rotate_hotspot(const vita2d_texture *texture, float x, float y, float x_scale, float y_scale, float rad, float center_x, float center_y, unsigned int color)
{
 set_texture_tint_program();
 set_texture_wvp_uniform();
 set_texture_tint_color_uniform(color);
 draw_texture_scale_rotate_hotspot_generic(texture, x, y, x_scale, y_scale,
  rad, center_x, center_y);
}
