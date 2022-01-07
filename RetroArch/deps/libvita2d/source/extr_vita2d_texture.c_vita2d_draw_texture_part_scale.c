
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vita2d_texture ;


 int draw_texture_part_scale_generic (int const*,float,float,float,float,float,float,float,float) ;
 int set_texture_program () ;
 int set_texture_wvp_uniform () ;

void vita2d_draw_texture_part_scale(const vita2d_texture *texture, float x, float y, float tex_x, float tex_y, float tex_w, float tex_h, float x_scale, float y_scale)
{
 set_texture_program();
 set_texture_wvp_uniform();
 draw_texture_part_scale_generic(texture, x, y, tex_x, tex_y, tex_w, tex_h, x_scale, y_scale);
}
