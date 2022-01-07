
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int height; int width; } ;
typedef TYPE_4__ video_frame_info_t ;
struct TYPE_14__ {int footer; } ;
struct TYPE_13__ {scalar_t__ sidebar_entry_icon_size; } ;
struct TYPE_17__ {TYPE_3__* theme; TYPE_2__ fonts; int * icons_textures; TYPE_1__ dimensions; } ;
typedef TYPE_5__ ozone_handle_t ;
struct TYPE_15__ {int text_rgba; int entries_icon; } ;


 unsigned int FONT_SIZE_FOOTER ;
 int MSG_NO_THUMBNAIL_AVAILABLE ;
 unsigned int OZONE_ENTRIES_ICONS_TEXTURE_CORE_INFO ;
 int TEXT_ALIGN_CENTER ;
 unsigned int font_driver_get_line_height (int ,float) ;
 int menu_display_blend_begin (TYPE_4__*) ;
 int menu_display_blend_end (TYPE_4__*) ;
 int msg_hash_to_str (int ) ;
 int ozone_draw_icon (TYPE_4__*,unsigned int,unsigned int,int ,unsigned int,unsigned int,int ,int,int ,int,int ) ;
 int ozone_draw_text (TYPE_4__*,TYPE_5__*,int ,unsigned int,unsigned int,int ,int ,int,int ,int ,int) ;

__attribute__((used)) static void ozone_draw_no_thumbnail_available(ozone_handle_t *ozone,
      video_frame_info_t *video_info,
      unsigned x_position,
      unsigned sidebar_width,
      unsigned y_offset)
{
   unsigned icon = OZONE_ENTRIES_ICONS_TEXTURE_CORE_INFO;
   unsigned icon_size = (unsigned)((float)ozone->dimensions.sidebar_entry_icon_size * 1.5f);
   unsigned text_height = font_driver_get_line_height(ozone->fonts.footer, 1.0f);

   menu_display_blend_begin(video_info);
   ozone_draw_icon(video_info,
      icon_size,
      icon_size,
      ozone->icons_textures[icon],
      x_position + sidebar_width/2 - icon_size/2,
      video_info->height / 2 - icon_size/2 - y_offset,
      video_info->width,
      video_info->height,
      0, 1, ozone->theme->entries_icon);
   menu_display_blend_end(video_info);

   ozone_draw_text(video_info,
      ozone,
      msg_hash_to_str(MSG_NO_THUMBNAIL_AVAILABLE),
      x_position + sidebar_width/2,
      video_info->height / 2 - icon_size/2 + text_height * 3 + FONT_SIZE_FOOTER - y_offset,
      TEXT_ALIGN_CENTER,
      video_info->width, video_info->height,
      ozone->fonts.footer,
      ozone->theme->text_rgba,
      1
   );
}
