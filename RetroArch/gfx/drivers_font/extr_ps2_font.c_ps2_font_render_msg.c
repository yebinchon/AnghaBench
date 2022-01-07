
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct font_params {int dummy; } ;
struct TYPE_6__ {int gsFontM; TYPE_1__* ps2_video; } ;
typedef TYPE_2__ ps2_font_info_t ;
struct TYPE_7__ {int Height; } ;
struct TYPE_5__ {int clearVRAM_font; TYPE_3__* gsGlobal; } ;


 int FONTM_TEXTURE_BOTTOM_MARGIN ;
 int FONTM_TEXTURE_COLOR ;
 int FONTM_TEXTURE_LEFT_MARGIN ;
 int FONTM_TEXTURE_SCALED ;
 int FONTM_TEXTURE_ZPOSITION ;
 int gsKit_fontm_print_scaled (TYPE_3__*,int ,int,int,int ,int ,int ,char const*) ;
 int ps2_upload_font (TYPE_3__*,int ) ;

__attribute__((used)) static void ps2_font_render_msg(
      video_frame_info_t *video_info,
      void *data, const char *msg,
      const struct font_params *params)
{
   ps2_font_info_t *ps2 = (ps2_font_info_t *)data;

   if (ps2) {
      int x = FONTM_TEXTURE_LEFT_MARGIN;
      int y = ps2->ps2_video->gsGlobal->Height - FONTM_TEXTURE_BOTTOM_MARGIN;
      if (ps2->ps2_video->clearVRAM_font) {
         ps2_upload_font(ps2->ps2_video->gsGlobal, ps2->gsFontM);
         ps2->ps2_video->clearVRAM_font = 0;
      }
      gsKit_fontm_print_scaled(ps2->ps2_video->gsGlobal, ps2->gsFontM, x, y, FONTM_TEXTURE_ZPOSITION,
                                 FONTM_TEXTURE_SCALED , FONTM_TEXTURE_COLOR, msg);
   }
}
