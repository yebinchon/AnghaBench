
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct retro_hw_render_interface {int dummy; } ;
struct TYPE_3__ {int updatedPalette; int padding; int clearTexture; } ;
struct TYPE_4__ {TYPE_1__ iface; int clearVRAM; } ;
typedef TYPE_2__ ps2_video_t ;


 int empty_ps2_insets ;

__attribute__((used)) static bool ps2_get_hw_render_interface(void* data,
      const struct retro_hw_render_interface** iface)
{
   ps2_video_t* ps2 = (ps2_video_t*)data;
   ps2->iface.clearTexture = ps2->clearVRAM;
   ps2->iface.updatedPalette = 1;
   ps2->iface.padding = empty_ps2_insets;
   *iface = (const struct retro_hw_render_interface*)&ps2->iface;
   return 1;
}
