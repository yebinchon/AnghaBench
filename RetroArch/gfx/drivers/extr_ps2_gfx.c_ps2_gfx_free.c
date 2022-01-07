
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* menuTexture; void* coreTexture; int gsGlobal; } ;
typedef TYPE_1__ ps2_video_t ;


 int GS_BLACK ;
 int deinitTexture (void*) ;
 int font_driver_free_osd () ;
 int free (void*) ;
 int gsKit_clear (int ,int ) ;
 int gsKit_deinit_global (int ) ;
 int gsKit_vram_clear (int ) ;

__attribute__((used)) static void ps2_gfx_free(void *data)
{
   ps2_video_t *ps2 = (ps2_video_t*)data;

   gsKit_clear(ps2->gsGlobal, GS_BLACK);
   gsKit_vram_clear(ps2->gsGlobal);

   font_driver_free_osd();

   deinitTexture(ps2->menuTexture);
   deinitTexture(ps2->coreTexture);

   free(ps2->menuTexture);
   free(ps2->coreTexture);

   gsKit_deinit_global(ps2->gsGlobal);

   free(data);
}
