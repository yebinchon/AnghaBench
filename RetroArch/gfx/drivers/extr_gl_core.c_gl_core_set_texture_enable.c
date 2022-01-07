
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu_texture_enable; int menu_texture_full_screen; } ;
typedef TYPE_1__ gl_core_t ;



__attribute__((used)) static void gl_core_set_texture_enable(void *data, bool state, bool full_screen)
{
   gl_core_t *gl = (gl_core_t*)data;

   if (!gl)
      return;

   gl->menu_texture_enable = state;
   gl->menu_texture_full_screen = full_screen;
}
