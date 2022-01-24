#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_9__ ;
typedef  struct TYPE_41__   TYPE_8__ ;
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_30__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;
typedef  struct TYPE_32__   TYPE_10__ ;

/* Type definitions */
struct TYPE_38__ {unsigned int width; unsigned int height; scalar_t__ xmb_alpha_factor; } ;
typedef  TYPE_5__ video_frame_info_t ;
struct TYPE_39__ {double width; float alpha; uintptr_t icon; float x; double y; float zoom; } ;
typedef  TYPE_6__ stripes_node_t ;
struct TYPE_33__ {int /*<<< orphan*/ * list; } ;
struct TYPE_36__ {scalar_t__ vertices; } ;
struct TYPE_37__ {TYPE_3__ coords; } ;
struct TYPE_35__ {TYPE_4__ carr; } ;
struct TYPE_40__ {int icon_spacing_horizontal; int icon_size; float alpha; unsigned int system_tab_end; double categories_x_pos; double categories_angle; TYPE_1__ textures; int /*<<< orphan*/  cursor_size; scalar_t__ mouse_show; int /*<<< orphan*/ * box_message; int /*<<< orphan*/  font2; int /*<<< orphan*/  font; int /*<<< orphan*/  shadow_offset; TYPE_30__ raster_block2; TYPE_30__ raster_block; } ;
typedef  TYPE_7__ stripes_handle_t ;
struct TYPE_34__ {float menu_scale_factor; } ;
struct TYPE_41__ {TYPE_2__ floats; } ;
typedef  TYPE_8__ settings_t ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_42__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_9__ menu_input_pointer_t ;
struct TYPE_32__ {float rotation; int scale_x; int scale_y; int scale_z; int scale_enable; int /*<<< orphan*/ * matrix; } ;
typedef  TYPE_10__ menu_display_ctx_rotate_draw_t ;
typedef  int /*<<< orphan*/  math_matrix_4x4 ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,double,double,float*) ; 
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 float FUNC1 (float,float) ; 
 size_t STRIPES_TEXTURE_POINTER ; 
 TYPE_8__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_30__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,double,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,double,unsigned int,double,unsigned int,unsigned int,unsigned int,float*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_10__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,float) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,unsigned int) ; 
 char* FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 char* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_9__*) ; 
 size_t FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__* stripes_coord_black ; 
 scalar_t__* stripes_coord_white ; 
 int /*<<< orphan*/  FUNC20 (TYPE_7__*,TYPE_5__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_7__*,TYPE_5__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,double,int /*<<< orphan*/ *,uintptr_t,float,float,unsigned int,unsigned int,double,float,float,scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC23 (TYPE_7__*,unsigned int) ; 
 scalar_t__* stripes_item_color ; 
 unsigned int FUNC24 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_5__*,TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC27(void *data, video_frame_info_t *video_info)
{
   math_matrix_4x4 mymat;
   unsigned i;
   menu_display_ctx_rotate_draw_t rotate_draw;
   char msg[1024];
   char title_msg[255];
   char title_truncated[255];
   size_t selection                        = 0;
   size_t percent_width                    = 0;
   const int min_thumb_size                = 50;
   bool render_background                  = false;
   file_list_t *selection_buf              = NULL;
   unsigned width                          = video_info->width;
   unsigned height                         = video_info->height;
   const float under_thumb_margin          = 0.96;
   float scale_factor                      = 0.0f;
   float pseudo_font_length                = 0.0f;
   float stack_width                       = 285;
   stripes_handle_t *stripes                       = (stripes_handle_t*)data;
   settings_t *settings                    = FUNC2();

   if (!stripes)
      return;

   scale_factor                            = (settings->floats.menu_scale_factor * (float)width) / 1920.0f;
   pseudo_font_length                      = stripes->icon_spacing_horizontal * 4 - stripes->icon_size / 4;

   msg[0]             = '\0';
   title_msg[0]       = '\0';
   title_truncated[0] = '\0';

   FUNC3(stripes->font,  &stripes->raster_block);
   FUNC3(stripes->font2, &stripes->raster_block2);

   stripes->raster_block.carr.coords.vertices  = 0;
   stripes->raster_block2.carr.coords.vertices = 0;

   FUNC11(stripes_coord_black, FUNC1(
         (float)video_info->xmb_alpha_factor/100, stripes->alpha));
   FUNC11(stripes_coord_white, stripes->alpha);

   FUNC20(
         stripes,
         video_info,
         width,
         height);

   selection = FUNC17();

   rotate_draw.matrix       = &mymat;
   rotate_draw.rotation     = 0;
   rotate_draw.scale_x      = 1;
   rotate_draw.scale_y      = 1;
   rotate_draw.scale_z      = 1;
   rotate_draw.scale_enable = true;

   FUNC10(&rotate_draw, video_info);
   FUNC6(video_info);

   /* Horizontal stripes */
   for (i = 0; i <= FUNC24(stripes, MENU_LIST_HORIZONTAL)
      + stripes->system_tab_end; i++)
   {
      stripes_node_t *node = FUNC23(stripes, i);

      if (!node)
         continue;

      float rgb[3];
      FUNC0(0.07*(float)i,0.5,0.5, &rgb[0]) ;
      float color[16] = {
         rgb[0], rgb[1], rgb[2], 0.55,
         rgb[0], rgb[1], rgb[2], 0.55,
         rgb[0], rgb[1], rgb[2], 0.55,
         rgb[0], rgb[1], rgb[2], 0.55,
      };

      FUNC9(
            video_info,
            stripes->categories_x_pos + stack_width,
            0,
            stripes->categories_x_pos + stack_width + node->width,
            0,
            stripes->categories_x_pos + stack_width + stripes->categories_angle,
            video_info->height,
            stripes->categories_x_pos + stack_width + stripes->categories_angle + node->width,
            video_info->height,
            video_info->width, video_info->height,
            &color[0]);

      FUNC6(video_info);

      stack_width += node->width;
   }

   stack_width = 285;

   /* Horizontal tab icons */
   for (i = 0; i <= FUNC24(stripes, MENU_LIST_HORIZONTAL)
      + stripes->system_tab_end; i++)
   {
      stripes_node_t *node = FUNC23(stripes, i);

      if (!node)
         continue;

      FUNC11(stripes_item_color, FUNC1(node->alpha, stripes->alpha));

      if (stripes_item_color[3] != 0)
      {
         menu_display_ctx_rotate_draw_t rotate_draw;
         math_matrix_4x4 mymat;
         uintptr_t texture        = node->icon;
         float x                  = stripes->categories_x_pos + stack_width + node->x + node->width / 2.0
                                    - stripes->icon_size / 2.0;
         float y                  = node->y + stripes->icon_size / 2.0;
         float rotation           = 0;
         float scale_factor       = node->zoom;

         rotate_draw.matrix       = &mymat;
         rotate_draw.rotation     = rotation;
         rotate_draw.scale_x      = scale_factor;
         rotate_draw.scale_y      = scale_factor;
         rotate_draw.scale_z      = 1;
         rotate_draw.scale_enable = true;

         FUNC10(&rotate_draw, video_info);

         FUNC22(video_info,
               stripes->icon_size,
               &mymat,
               texture,
               x,
               y,
               width,
               height,
               1.0,
               rotation,
               scale_factor,
               &stripes_item_color[0],
               stripes->shadow_offset);
      }

      stack_width += node->width;
   }

   FUNC7(video_info);

   /* Vertical icons */
//    if (stripes)
//       stripes_draw_items(
//             video_info,
//             stripes,
//             stripes->selection_buf_old,
//             stripes->selection_ptr_old,
//             (stripes_list_get_size(stripes, MENU_LIST_PLAIN) > 1)
//             ? stripes->categories_selection_ptr :
//             stripes->categories_selection_ptr_old,
//             &stripes_item_color[0],
//             width,
//             height);

//    selection_buf = menu_entries_get_selection_buf_ptr(0);

//    if (stripes)
//       stripes_draw_items(
//             video_info,
//             stripes,
//             selection_buf,
//             selection,
//             stripes->categories_selection_ptr,
//             &stripes_item_color[0],
//             width,
//             height);

   FUNC4(video_info->width, video_info->height, stripes->font,
         video_info);
   FUNC3(stripes->font, NULL);

   FUNC4(video_info->width, video_info->height, stripes->font2,
         video_info);
   FUNC3(stripes->font2, NULL);

   if (FUNC14())
   {
      const char *str   = FUNC13();
      const char *label = FUNC15();

      FUNC18(msg, sizeof(msg), "%s\n%s", label, str);
      render_background = true;
   }

   if (!FUNC19(stripes->box_message))
   {
      FUNC26(msg, stripes->box_message,
            sizeof(msg));
      FUNC5(stripes->box_message);
      stripes->box_message  = NULL;
      render_background = true;
   }

   if (render_background)
   {
      FUNC21(stripes, video_info, width, height);
      FUNC25(
            video_info, stripes, msg);
   }

   /* Cursor image */
   if (stripes->mouse_show)
   {
      menu_input_pointer_t pointer;
      FUNC16(&pointer);

      FUNC11(stripes_coord_white, FUNC1(stripes->alpha, 1.00f));
      FUNC8(
            video_info,
            &stripes_coord_white[0],
            stripes->cursor_size,
            stripes->textures.list[STRIPES_TEXTURE_POINTER],
            pointer.x,
            pointer.y,
            width,
            height);
   }

   FUNC12(video_info->width, video_info->height);
}