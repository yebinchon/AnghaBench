#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int height; int /*<<< orphan*/  width; } ;
typedef  TYPE_4__ video_frame_info_t ;
struct TYPE_14__ {int /*<<< orphan*/  footer; } ;
struct TYPE_13__ {scalar_t__ sidebar_entry_icon_size; } ;
struct TYPE_17__ {TYPE_3__* theme; TYPE_2__ fonts; int /*<<< orphan*/ * icons_textures; TYPE_1__ dimensions; } ;
typedef  TYPE_5__ ozone_handle_t ;
struct TYPE_15__ {int /*<<< orphan*/  text_rgba; int /*<<< orphan*/  entries_icon; } ;

/* Variables and functions */
 unsigned int FONT_SIZE_FOOTER ; 
 int /*<<< orphan*/  MSG_NO_THUMBNAIL_AVAILABLE ; 
 unsigned int OZONE_ENTRIES_ICONS_TEXTURE_CORE_INFO ; 
 int /*<<< orphan*/  TEXT_ALIGN_CENTER ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(ozone_handle_t *ozone,
      video_frame_info_t *video_info,
      unsigned x_position,
      unsigned sidebar_width,
      unsigned y_offset)
{
   unsigned icon        = OZONE_ENTRIES_ICONS_TEXTURE_CORE_INFO;
   unsigned icon_size   = (unsigned)((float)ozone->dimensions.sidebar_entry_icon_size * 1.5f);
   unsigned text_height = FUNC0(ozone->fonts.footer, 1.0f);

   FUNC1(video_info);
   FUNC4(video_info,
      icon_size,
      icon_size,
      ozone->icons_textures[icon],
      x_position + sidebar_width/2 - icon_size/2,
      video_info->height / 2 - icon_size/2 - y_offset,
      video_info->width,
      video_info->height,
      0, 1, ozone->theme->entries_icon);
   FUNC2(video_info);

   FUNC5(video_info,
      ozone,
      FUNC3(MSG_NO_THUMBNAIL_AVAILABLE),
      x_position + sidebar_width/2,
      video_info->height / 2 - icon_size/2 + text_height * 3 + FONT_SIZE_FOOTER - y_offset,
      TEXT_ALIGN_CENTER,
      video_info->width, video_info->height,
      ozone->fonts.footer,
      ozone->theme->text_rgba,
      true
   );
}