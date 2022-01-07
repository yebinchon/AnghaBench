
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int updatedPalette; } ;
struct TYPE_5__ {int clearVRAM; int clearVRAM_font; TYPE_1__ iface; int gsGlobal; int PSM; int coreTexture; } ;
typedef TYPE_2__ ps2_video_t ;


 void const* RETRO_HW_FRAME_BUFFER_VALID ;
 int gsKit_vram_clear (int ) ;
 int texture_need_prepare (int ,int,int,int ) ;

__attribute__((used)) static void clearVRAMIfNeeded(ps2_video_t *ps2, const void *frame, int width, int height)
{
   if (!ps2->clearVRAM) {
      if(frame && frame != RETRO_HW_FRAME_BUFFER_VALID) {
         bool coreVRAMClear = 0;
         coreVRAMClear = texture_need_prepare(ps2->coreTexture, width, height, ps2->PSM);
         ps2->clearVRAM = ps2->clearVRAM || coreVRAMClear;
      }
   }

   if (ps2->clearVRAM) {
      gsKit_vram_clear(ps2->gsGlobal);
      ps2->iface.updatedPalette = 1;
      ps2->clearVRAM_font = 1;
   }
}
