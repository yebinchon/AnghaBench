
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float const* gl_tex_coords ;

__attribute__((used)) static const float *menu_display_gl_get_default_tex_coords(void)
{
   return &gl_tex_coords[0];
}
