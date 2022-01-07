
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vita2d_texture ;


 int vita2d_draw_texture_scale_rotate_hotspot (int const*,float,float,float,float,float,float,float) ;
 float vita2d_texture_get_height (int const*) ;
 float vita2d_texture_get_width (int const*) ;

void vita2d_draw_texture_scale_rotate(const vita2d_texture *texture, float x, float y, float x_scale, float y_scale, float rad)
{
 vita2d_draw_texture_scale_rotate_hotspot(texture, x, y, x_scale, y_scale,
  rad, vita2d_texture_get_width(texture)/2.0f,
  vita2d_texture_get_height(texture)/2.0f);
}
