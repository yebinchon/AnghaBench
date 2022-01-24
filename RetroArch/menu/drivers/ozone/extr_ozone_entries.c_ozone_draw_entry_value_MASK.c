#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_4__ video_frame_info_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_16__ {int /*<<< orphan*/  entries_label; } ;
struct TYPE_15__ {int /*<<< orphan*/  entries_checkmark; } ;
struct TYPE_19__ {TYPE_3__* theme; TYPE_2__ fonts; TYPE_1__ theme_dynamic; } ;
typedef  TYPE_5__ ozone_handle_t ;
struct TYPE_20__ {char* value; scalar_t__ checked; } ;
typedef  TYPE_6__ menu_entry_t ;
struct TYPE_17__ {int /*<<< orphan*/  text_sublabel_rgba; int /*<<< orphan*/  text_selected_rgba; int /*<<< orphan*/ * textures; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DISABLED ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ENABLED ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_OFF ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_ON ; 
 size_t OZONE_THEME_TEXTURE_CHECK ; 
 int /*<<< orphan*/  TEXT_ALIGN_RIGHT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,int,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_5__*,char*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void FUNC8(ozone_handle_t *ozone,
      video_frame_info_t *video_info,
      char *value,
      unsigned x, unsigned y,
      uint32_t alpha_uint32,
      menu_entry_t *entry)
{
   bool switch_is_on = true;
   bool do_draw_text = false;

   if (!entry->checked && FUNC6(value))
      return;

   /* check icon */
   if (entry->checked)
   {
      FUNC1(video_info);
      FUNC4(video_info, 30, 30, ozone->theme->textures[OZONE_THEME_TEXTURE_CHECK], x - 20, y - 22, video_info->width, video_info->height, 0, 1, ozone->theme_dynamic.entries_checkmark);
      FUNC2(video_info);
      return;
   }

   /* text value */
   if (FUNC7(value, FUNC3(MENU_ENUM_LABEL_DISABLED)) ||
         (FUNC7(value, FUNC3(MENU_ENUM_LABEL_VALUE_OFF))))
   {
      switch_is_on = false;
      do_draw_text = false;
   }
   else if (FUNC7(value, FUNC3(MENU_ENUM_LABEL_ENABLED)) ||
         (FUNC7(value, FUNC3(MENU_ENUM_LABEL_VALUE_ON))))
   {
      switch_is_on = true;
      do_draw_text = false;
   }
   else
   {
      if (!FUNC6(entry->value))
      {
         if (
               FUNC7(entry->value, "...")     ||
               FUNC7(entry->value, "(PRESET)")  ||
               FUNC7(entry->value, "(SHADER)")  ||
               FUNC7(entry->value, "(COMP)")  ||
               FUNC7(entry->value, "(CORE)")  ||
               FUNC7(entry->value, "(MOVIE)") ||
               FUNC7(entry->value, "(MUSIC)") ||
               FUNC7(entry->value, "(DIR)")   ||
               FUNC7(entry->value, "(RDB)")   ||
               FUNC7(entry->value, "(CURSOR)")||
               FUNC7(entry->value, "(CFILE)") ||
               FUNC7(entry->value, "(FILE)")  ||
               FUNC7(entry->value, "(IMAGE)")
            )
         {
            return;
         }
         else
            do_draw_text = true;
      }
      else
         do_draw_text = true;
   }

   if (do_draw_text)
   {
      FUNC5(video_info, ozone, value, x, y, TEXT_ALIGN_RIGHT, video_info->width, video_info->height, ozone->fonts.entries_label, FUNC0(ozone->theme->text_selected_rgba, alpha_uint32), false);
   }
   else
   {
      FUNC5(video_info, ozone, (switch_is_on ? FUNC3(MENU_ENUM_LABEL_VALUE_ON) : FUNC3(MENU_ENUM_LABEL_VALUE_OFF)),
               x, y, TEXT_ALIGN_RIGHT, video_info->width, video_info->height, ozone->fonts.entries_label,
               FUNC0((switch_is_on ? ozone->theme->text_selected_rgba : ozone->theme->text_sublabel_rgba), alpha_uint32), false);
   }
}