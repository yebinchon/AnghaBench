
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {char const* stat_text; int osd_stat_params; scalar_t__ statistics_show; } ;
typedef TYPE_2__ video_frame_info_t ;
typedef int uint64_t ;
struct retro_hw_ps2_insets {unsigned int right; } ;
struct font_params {int dummy; } ;
struct TYPE_13__ {int updatedPalette; int clearTexture; struct retro_hw_ps2_insets padding; } ;
struct TYPE_15__ {int fullscreen; TYPE_4__* menuTexture; int gsGlobal; scalar_t__ clearVRAM; scalar_t__ menuVisible; int force_aspect; TYPE_4__* coreTexture; TYPE_1__ iface; int core_filter; int PSM; } ;
typedef TYPE_3__ ps2_video_t ;
struct TYPE_16__ {int Height; int Width; } ;


 int GS_BLACK ;
 int GS_PSM_CT32 ;
 void const* RETRO_HW_FRAME_BUFFER_VALID ;
 int clearVRAMIfNeeded (TYPE_3__*,void const*,unsigned int,unsigned int) ;
 struct retro_hw_ps2_insets empty_ps2_insets ;
 int font_driver_render_msg (TYPE_2__*,int *,char const*,struct font_params const*) ;
 int gsKit_clear (int ,int ) ;
 int gsKit_texture_upload (int ,TYPE_4__*) ;
 int prim_texture (int ,TYPE_4__*,int,int ,struct retro_hw_ps2_insets) ;
 int printf (char*,int) ;
 int ps2_texture_upload (int ,TYPE_4__*,int) ;
 int refreshScreen (TYPE_3__*) ;
 int string_is_empty (char const*) ;
 int transfer_texture (TYPE_4__*,void const*,int,unsigned int,int ,int ,int) ;
 int vram_alloc (int ,TYPE_4__*) ;

__attribute__((used)) static bool ps2_gfx_frame(void *data, const void *frame,
      unsigned width, unsigned height, uint64_t frame_count,
      unsigned pitch, const char *msg, video_frame_info_t *video_info)
{
   ps2_video_t *ps2 = (ps2_video_t*)data;

   if (!width || !height)
      return 0;







   clearVRAMIfNeeded(ps2, frame, width, height);
   gsKit_clear(ps2->gsGlobal, GS_BLACK);

   if (frame) {
      bool sendPalette = 0;
      struct retro_hw_ps2_insets padding = empty_ps2_insets;
      if (frame != RETRO_HW_FRAME_BUFFER_VALID){

         int bytes_per_pixel = (ps2->PSM == GS_PSM_CT32) ? 4 : 2;
         int real_width = pitch / bytes_per_pixel;
         transfer_texture(ps2->coreTexture, frame, real_width, height, ps2->PSM, ps2->core_filter, 1);
         padding.right = real_width - width;
      } else {
         sendPalette = ps2->iface.updatedPalette;
         ps2->iface.updatedPalette = 0;
         padding = ps2->iface.padding;
         if (ps2->iface.clearTexture) {
            ps2->iface.clearTexture = 0;
         }
      }
      if(ps2->clearVRAM) {
         vram_alloc(ps2->gsGlobal, ps2->coreTexture);
      }
      ps2_texture_upload(ps2->gsGlobal, ps2->coreTexture, sendPalette);
      prim_texture(ps2->gsGlobal, ps2->coreTexture, 1, ps2->force_aspect, padding);
   }

   if (ps2->menuVisible) {
      bool texture_empty = !ps2->menuTexture->Width || !ps2->menuTexture->Height;
      if (!texture_empty) {
         if(ps2->clearVRAM) {
            vram_alloc(ps2->gsGlobal, ps2->menuTexture);
         }
         gsKit_texture_upload(ps2->gsGlobal, ps2->menuTexture);
         prim_texture(ps2->gsGlobal, ps2->menuTexture, 2, ps2->fullscreen, empty_ps2_insets);
      }
   } else if (video_info->statistics_show) {
      struct font_params *osd_params = (struct font_params*)
         &video_info->osd_stat_params;

      if (osd_params) {
         font_driver_render_msg(video_info, ((void*)0), video_info->stat_text,
               (const struct font_params*)&video_info->osd_stat_params);
      }
   }

   if(!string_is_empty(msg)) {
      font_driver_render_msg(video_info, ((void*)0), msg, ((void*)0));
   }

   refreshScreen(ps2);

   return 1;
}
