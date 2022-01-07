
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clearTexture; int updatedPalette; } ;
struct TYPE_4__ {int menuVisible; int clearVRAM; int fullscreen; TYPE_1__ iface; } ;
typedef TYPE_2__ ps2_video_t ;



__attribute__((used)) static void ps2_set_texture_enable(void *data, bool enable, bool fullscreen)
{
   ps2_video_t *ps2 = (ps2_video_t*)data;
   if (ps2->menuVisible != enable) {

      ps2->clearVRAM = 1;
      ps2->iface.clearTexture = 1;
      ps2->iface.updatedPalette = 1;
   }
   ps2->menuVisible = enable;
   ps2->fullscreen = fullscreen;
}
