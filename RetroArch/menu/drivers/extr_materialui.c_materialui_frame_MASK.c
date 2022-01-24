#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_60__   TYPE_9__ ;
typedef  struct TYPE_59__   TYPE_8__ ;
typedef  struct TYPE_58__   TYPE_7__ ;
typedef  struct TYPE_57__   TYPE_6__ ;
typedef  struct TYPE_56__   TYPE_5__ ;
typedef  struct TYPE_55__   TYPE_4__ ;
typedef  struct TYPE_54__   TYPE_42__ ;
typedef  struct TYPE_53__   TYPE_3__ ;
typedef  struct TYPE_52__   TYPE_2__ ;
typedef  struct TYPE_51__   TYPE_1__ ;
typedef  struct TYPE_50__   TYPE_16__ ;
typedef  struct TYPE_49__   TYPE_15__ ;
typedef  struct TYPE_48__   TYPE_14__ ;
typedef  struct TYPE_47__   TYPE_13__ ;
typedef  struct TYPE_46__   TYPE_12__ ;
typedef  struct TYPE_45__   TYPE_11__ ;
typedef  struct TYPE_44__   TYPE_10__ ;

/* Type definitions */
struct TYPE_48__ {unsigned int width; unsigned int height; scalar_t__ materialui_color_theme; } ;
typedef  TYPE_14__ video_frame_info_t ;
struct TYPE_60__ {scalar_t__ menu_ticker_type; } ;
struct TYPE_57__ {scalar_t__ menu_ticker_smooth; } ;
struct TYPE_49__ {TYPE_9__ uints; TYPE_6__ bools; } ;
typedef  TYPE_15__ settings_t ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_55__ {scalar_t__ vertices; } ;
struct TYPE_56__ {TYPE_4__ coords; } ;
struct TYPE_54__ {TYPE_5__ carr; } ;
struct TYPE_46__ {int /*<<< orphan*/  font; TYPE_42__ raster_block; } ;
struct TYPE_45__ {int /*<<< orphan*/  font; TYPE_42__ raster_block; } ;
struct TYPE_53__ {int /*<<< orphan*/  font; TYPE_42__ raster_block; } ;
struct TYPE_47__ {TYPE_12__ hint; TYPE_11__ list; TYPE_3__ title; } ;
struct TYPE_52__ {scalar_t__ type; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_51__ {int /*<<< orphan*/ * list; } ;
struct TYPE_44__ {int /*<<< orphan*/  screen_fade; int /*<<< orphan*/  list_highlighted_background; } ;
struct TYPE_59__ {int type_enum; int /*<<< orphan*/  idx; } ;
struct TYPE_58__ {int type_enum; int /*<<< orphan*/  idx; } ;
struct TYPE_50__ {scalar_t__ color_theme; float transition_x_offset; char* msgbox; TYPE_13__ font_data; TYPE_2__ pointer; TYPE_1__ textures; int /*<<< orphan*/  cursor_size; scalar_t__ mouse_show; TYPE_10__ colors; scalar_t__ nav_bar_layout_width; TYPE_8__ ticker; TYPE_7__ ticker_smooth; scalar_t__ use_smooth_ticker; } ;
typedef  TYPE_16__ materialui_handle_t ;
typedef  enum menu_animation_ticker_type { ____Placeholder_menu_animation_ticker_type } menu_animation_ticker_type ;
typedef  enum materialui_color_theme { ____Placeholder_materialui_color_theme } materialui_color_theme ;

/* Variables and functions */
 scalar_t__ MENU_POINTER_DISABLED ; 
 size_t MUI_TEXTURE_KEY_HOVER ; 
 size_t MUI_TEXTURE_POINTER ; 
 TYPE_15__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_42__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_16__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_16__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_16__*,TYPE_14__*,unsigned int,unsigned int,unsigned int,int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_16__*,TYPE_14__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_16__*,TYPE_14__*,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_16__*,TYPE_14__*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_16__*,TYPE_14__*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_16__*,TYPE_14__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_16__*,TYPE_14__*,unsigned int,unsigned int,unsigned int,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_16__*,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_14__*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_14__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_14__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 char* FUNC25 () ; 
 scalar_t__ FUNC26 () ; 
 char* FUNC27 () ; 
 size_t FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC30 (char*) ; 

__attribute__((used)) static void FUNC31(void *data, video_frame_info_t *video_info)
{
   materialui_handle_t *mui = (materialui_handle_t*)data;
   settings_t *settings     = FUNC0();
   unsigned width           = video_info->width;
   unsigned height          = video_info->height;
   unsigned header_height   = FUNC20();
   size_t selection         = FUNC28();
   int list_x_offset;

   if (!mui || !settings)
      return;

   FUNC21(width, height);

   /* Clear text */
   FUNC1(mui->font_data.title.font, &mui->font_data.title.raster_block);
   FUNC1(mui->font_data.list.font,  &mui->font_data.list.raster_block);
   FUNC1(mui->font_data.hint.font,  &mui->font_data.hint.raster_block);

   mui->font_data.title.raster_block.carr.coords.vertices = 0;
   mui->font_data.list.raster_block.carr.coords.vertices  = 0;
   mui->font_data.hint.raster_block.carr.coords.vertices  = 0;

   /* Update theme colours, if required */
   if (mui->color_theme != video_info->materialui_color_theme)
   {
      FUNC5(mui, (enum materialui_color_theme)video_info->materialui_color_theme);
      mui->color_theme = (enum materialui_color_theme)video_info->materialui_color_theme;
   }

   /* Update line ticker(s) */
   mui->use_smooth_ticker = settings->bools.menu_ticker_smooth;

   if (mui->use_smooth_ticker)
   {
      mui->ticker_smooth.idx       = FUNC16();
      mui->ticker_smooth.type_enum = (enum menu_animation_ticker_type)settings->uints.menu_ticker_type;
   }
   else
   {
      mui->ticker.idx       = FUNC15();
      mui->ticker.type_enum = (enum menu_animation_ticker_type)settings->uints.menu_ticker_type;
   }

   /* Handle any transparency adjustments required
    * by menu transition animations */
   FUNC4(mui);

   /* Get x offset for list items, required by
    * menu transition 'slide' animations */
   list_x_offset = (int)(mui->transition_x_offset * (float)((int)width - (int)mui->nav_bar_layout_width));

   /* Draw background */
   FUNC6(mui, video_info);

   /* Draw landscape border
    * (does nothing in portrait mode, or if landscape
    * optimisations are disabled) */
   FUNC9(
         mui, video_info, width, height, header_height, list_x_offset);

   /* Draw 'highlighted entry' selection box */
   FUNC13(
         mui, video_info, width, height, header_height, list_x_offset, selection,
         mui->colors.list_highlighted_background);

   /* Draw 'short press' touch feedback highlight */
   FUNC7(
         mui, video_info, width, height, header_height, list_x_offset, selection);

   /* Draw menu list
    * > Must update scrollbar draw position before
    *   list is rendered
    * > We handle the scrollbar in a separate step
    *   like this because we need to track its
    *   position in order to enable fast navigation
    *   via scrollbar 'dragging' */
   FUNC14(mui, width, height, header_height, list_x_offset);
   FUNC10(mui, video_info, width, height, list_x_offset);

   /* Flush first layer of text
    * > Menu list only uses list and hint fonts */
   FUNC2(width, height, mui->font_data.list.font, video_info);
   FUNC2(width, height, mui->font_data.hint.font, video_info);

   mui->font_data.list.raster_block.carr.coords.vertices = 0;
   mui->font_data.hint.raster_block.carr.coords.vertices = 0;

   /* Draw title + system bar */
   FUNC8(mui, video_info, width, height);

   /* Draw navigation bar */
   FUNC12(mui, video_info, width, height);

   /* Flush second layer of text
    * > Title + system bar only use title and hint fonts */
   FUNC2(width, height, mui->font_data.title.font, video_info);
   FUNC2(width, height, mui->font_data.hint.font,  video_info);

   mui->font_data.title.raster_block.carr.coords.vertices = 0;
   mui->font_data.hint.raster_block.carr.coords.vertices  = 0;

   /* Handle onscreen keyboard */
   if (FUNC26())
   {
      char msg[255];
      const char *str   = FUNC25();
      const char *label = FUNC27();

      msg[0] = '\0';

      /* Darken screen */
      FUNC19(video_info,
            0, 0, width, height, width, height, mui->colors.screen_fade);

      /* Draw message box */
      FUNC29(msg, sizeof(msg), "%s\n%s", label, str);
      FUNC11(mui, video_info, height / 4, msg);

      /* Draw onscreen keyboard */
      FUNC18(
            mui->textures.list[MUI_TEXTURE_KEY_HOVER],
            mui->font_data.list.font,
            video_info,
            FUNC23(), FUNC24(),
            0xFFFFFFFF);

      /* Flush message box & osk text
       * > Message box & osk only use list font */
      FUNC2(width, height, mui->font_data.list.font, video_info);
      mui->font_data.list.raster_block.carr.coords.vertices = 0;
   }

   /* Draw message box */
   if (!FUNC30(mui->msgbox))
   {
      /* Darken screen */
      FUNC19(video_info,
            0, 0, width, height, width, height, mui->colors.screen_fade);

      /* Draw message box */
      FUNC11(mui, video_info, height / 2, mui->msgbox);
      mui->msgbox[0] = '\0';

      /* Flush message box text
       * > Message box only uses list font */
      FUNC2(width, height, mui->font_data.list.font, video_info);
      mui->font_data.list.raster_block.carr.coords.vertices = 0;
   }

   /* Draw mouse cursor */
   if (mui->mouse_show && (mui->pointer.type != MENU_POINTER_DISABLED))
   {
      float color_white[16]  = {
         1.0f, 1.0f, 1.0f, 1.0f,
         1.0f, 1.0f, 1.0f, 1.0f,
         1.0f, 1.0f, 1.0f, 1.0f,
         1.0f, 1.0f, 1.0f, 1.0f
      };

      FUNC17(
            video_info,
            color_white,
            mui->cursor_size,
            mui->textures.list[MUI_TEXTURE_POINTER],
            mui->pointer.x,
            mui->pointer.y,
            width,
            height);
   }

   /* Undo any transparency adjustments caused
    * by menu transition animations */
   FUNC3(mui);

   /* Unbind fonts */
   FUNC1(mui->font_data.title.font, NULL);
   FUNC1(mui->font_data.list.font,  NULL);
   FUNC1(mui->font_data.hint.font,  NULL);

   FUNC22(width, height);
}