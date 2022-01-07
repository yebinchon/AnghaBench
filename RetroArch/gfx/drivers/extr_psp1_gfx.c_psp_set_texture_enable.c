
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active; } ;
struct TYPE_4__ {TYPE_1__ menu; } ;
typedef TYPE_2__ psp1_video_t ;



__attribute__((used)) static void psp_set_texture_enable(void *data, bool state, bool full_screen)
{
   (void) full_screen;

   psp1_video_t *psp = (psp1_video_t*)data;

   if (psp)
      psp->menu.active = state;
}
