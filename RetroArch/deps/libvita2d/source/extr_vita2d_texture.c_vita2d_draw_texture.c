
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vita2d_texture ;


 int draw_texture_generic (int const*,float,float) ;
 int set_texture_program () ;
 int set_texture_wvp_uniform () ;

void vita2d_draw_texture(const vita2d_texture *texture, float x, float y)
{
 set_texture_program();
 set_texture_wvp_uniform();
 draw_texture_generic(texture, x, y);
}
