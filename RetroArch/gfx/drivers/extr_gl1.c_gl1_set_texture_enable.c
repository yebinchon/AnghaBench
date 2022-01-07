
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu_texture_enable; int menu_texture_full_screen; } ;
typedef TYPE_1__ gl1_t ;



__attribute__((used)) static void gl1_set_texture_enable(void *data, bool state, bool full_screen)
{
   gl1_t *gl1 = (gl1_t*)data;

   if (!gl1)
      return;

   gl1->menu_texture_enable = state;
   gl1->menu_texture_full_screen = full_screen;
}
