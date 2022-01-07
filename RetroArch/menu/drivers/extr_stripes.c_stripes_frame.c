
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_30__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_10__ ;


struct TYPE_38__ {unsigned int width; unsigned int height; scalar_t__ xmb_alpha_factor; } ;
typedef TYPE_5__ video_frame_info_t ;
struct TYPE_39__ {double width; float alpha; uintptr_t icon; float x; double y; float zoom; } ;
typedef TYPE_6__ stripes_node_t ;
struct TYPE_33__ {int * list; } ;
struct TYPE_36__ {scalar_t__ vertices; } ;
struct TYPE_37__ {TYPE_3__ coords; } ;
struct TYPE_35__ {TYPE_4__ carr; } ;
struct TYPE_40__ {int icon_spacing_horizontal; int icon_size; float alpha; unsigned int system_tab_end; double categories_x_pos; double categories_angle; TYPE_1__ textures; int cursor_size; scalar_t__ mouse_show; int * box_message; int font2; int font; int shadow_offset; TYPE_30__ raster_block2; TYPE_30__ raster_block; } ;
typedef TYPE_7__ stripes_handle_t ;
struct TYPE_34__ {float menu_scale_factor; } ;
struct TYPE_41__ {TYPE_2__ floats; } ;
typedef TYPE_8__ settings_t ;
typedef int msg ;
struct TYPE_42__ {int y; int x; } ;
typedef TYPE_9__ menu_input_pointer_t ;
struct TYPE_32__ {float rotation; int scale_x; int scale_y; int scale_z; int scale_enable; int * matrix; } ;
typedef TYPE_10__ menu_display_ctx_rotate_draw_t ;
typedef int math_matrix_4x4 ;
typedef int file_list_t ;


 int HSLToRGB (double,double,double,float*) ;
 int MENU_LIST_HORIZONTAL ;
 float MIN (float,float) ;
 size_t STRIPES_TEXTURE_POINTER ;
 TYPE_8__* config_get_ptr () ;
 int font_driver_bind_block (int ,TYPE_30__*) ;
 int font_driver_flush (unsigned int,unsigned int,int ,TYPE_5__*) ;
 int free (int *) ;
 int menu_display_blend_begin (TYPE_5__*) ;
 int menu_display_blend_end (TYPE_5__*) ;
 int menu_display_draw_cursor (TYPE_5__*,scalar_t__*,int ,int ,int ,int ,unsigned int,unsigned int) ;
 int menu_display_draw_polygon (TYPE_5__*,double,int ,double,int ,double,unsigned int,double,unsigned int,unsigned int,unsigned int,float*) ;
 int menu_display_rotate_z (TYPE_10__*,TYPE_5__*) ;
 int menu_display_set_alpha (scalar_t__*,float) ;
 int menu_display_unset_viewport (unsigned int,unsigned int) ;
 char* menu_input_dialog_get_buffer () ;
 scalar_t__ menu_input_dialog_get_display_kb () ;
 char* menu_input_dialog_get_label_buffer () ;
 int menu_input_get_pointer_state (TYPE_9__*) ;
 size_t menu_navigation_get_selection () ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int string_is_empty (int *) ;
 scalar_t__* stripes_coord_black ;
 scalar_t__* stripes_coord_white ;
 int stripes_draw_bg (TYPE_7__*,TYPE_5__*,unsigned int,unsigned int) ;
 int stripes_draw_dark_layer (TYPE_7__*,TYPE_5__*,unsigned int,unsigned int) ;
 int stripes_draw_icon (TYPE_5__*,double,int *,uintptr_t,float,float,unsigned int,unsigned int,double,float,float,scalar_t__*,int ) ;
 TYPE_6__* stripes_get_node (TYPE_7__*,unsigned int) ;
 scalar_t__* stripes_item_color ;
 unsigned int stripes_list_get_size (TYPE_7__*,int ) ;
 int stripes_render_messagebox_internal (TYPE_5__*,TYPE_7__*,char*) ;
 int strlcpy (char*,int *,int) ;

__attribute__((used)) static void stripes_frame(void *data, video_frame_info_t *video_info)
{
   math_matrix_4x4 mymat;
   unsigned i;
   menu_display_ctx_rotate_draw_t rotate_draw;
   char msg[1024];
   char title_msg[255];
   char title_truncated[255];
   size_t selection = 0;
   size_t percent_width = 0;
   const int min_thumb_size = 50;
   bool render_background = 0;
   file_list_t *selection_buf = ((void*)0);
   unsigned width = video_info->width;
   unsigned height = video_info->height;
   const float under_thumb_margin = 0.96;
   float scale_factor = 0.0f;
   float pseudo_font_length = 0.0f;
   float stack_width = 285;
   stripes_handle_t *stripes = (stripes_handle_t*)data;
   settings_t *settings = config_get_ptr();

   if (!stripes)
      return;

   scale_factor = (settings->floats.menu_scale_factor * (float)width) / 1920.0f;
   pseudo_font_length = stripes->icon_spacing_horizontal * 4 - stripes->icon_size / 4;

   msg[0] = '\0';
   title_msg[0] = '\0';
   title_truncated[0] = '\0';

   font_driver_bind_block(stripes->font, &stripes->raster_block);
   font_driver_bind_block(stripes->font2, &stripes->raster_block2);

   stripes->raster_block.carr.coords.vertices = 0;
   stripes->raster_block2.carr.coords.vertices = 0;

   menu_display_set_alpha(stripes_coord_black, MIN(
         (float)video_info->xmb_alpha_factor/100, stripes->alpha));
   menu_display_set_alpha(stripes_coord_white, stripes->alpha);

   stripes_draw_bg(
         stripes,
         video_info,
         width,
         height);

   selection = menu_navigation_get_selection();

   rotate_draw.matrix = &mymat;
   rotate_draw.rotation = 0;
   rotate_draw.scale_x = 1;
   rotate_draw.scale_y = 1;
   rotate_draw.scale_z = 1;
   rotate_draw.scale_enable = 1;

   menu_display_rotate_z(&rotate_draw, video_info);
   menu_display_blend_begin(video_info);


   for (i = 0; i <= stripes_list_get_size(stripes, MENU_LIST_HORIZONTAL)
      + stripes->system_tab_end; i++)
   {
      stripes_node_t *node = stripes_get_node(stripes, i);

      if (!node)
         continue;

      float rgb[3];
      HSLToRGB(0.07*(float)i,0.5,0.5, &rgb[0]) ;
      float color[16] = {
         rgb[0], rgb[1], rgb[2], 0.55,
         rgb[0], rgb[1], rgb[2], 0.55,
         rgb[0], rgb[1], rgb[2], 0.55,
         rgb[0], rgb[1], rgb[2], 0.55,
      };

      menu_display_draw_polygon(
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

      menu_display_blend_begin(video_info);

      stack_width += node->width;
   }

   stack_width = 285;


   for (i = 0; i <= stripes_list_get_size(stripes, MENU_LIST_HORIZONTAL)
      + stripes->system_tab_end; i++)
   {
      stripes_node_t *node = stripes_get_node(stripes, i);

      if (!node)
         continue;

      menu_display_set_alpha(stripes_item_color, MIN(node->alpha, stripes->alpha));

      if (stripes_item_color[3] != 0)
      {
         menu_display_ctx_rotate_draw_t rotate_draw;
         math_matrix_4x4 mymat;
         uintptr_t texture = node->icon;
         float x = stripes->categories_x_pos + stack_width + node->x + node->width / 2.0
                                    - stripes->icon_size / 2.0;
         float y = node->y + stripes->icon_size / 2.0;
         float rotation = 0;
         float scale_factor = node->zoom;

         rotate_draw.matrix = &mymat;
         rotate_draw.rotation = rotation;
         rotate_draw.scale_x = scale_factor;
         rotate_draw.scale_y = scale_factor;
         rotate_draw.scale_z = 1;
         rotate_draw.scale_enable = 1;

         menu_display_rotate_z(&rotate_draw, video_info);

         stripes_draw_icon(video_info,
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

   menu_display_blend_end(video_info);
   font_driver_flush(video_info->width, video_info->height, stripes->font,
         video_info);
   font_driver_bind_block(stripes->font, ((void*)0));

   font_driver_flush(video_info->width, video_info->height, stripes->font2,
         video_info);
   font_driver_bind_block(stripes->font2, ((void*)0));

   if (menu_input_dialog_get_display_kb())
   {
      const char *str = menu_input_dialog_get_buffer();
      const char *label = menu_input_dialog_get_label_buffer();

      snprintf(msg, sizeof(msg), "%s\n%s", label, str);
      render_background = 1;
   }

   if (!string_is_empty(stripes->box_message))
   {
      strlcpy(msg, stripes->box_message,
            sizeof(msg));
      free(stripes->box_message);
      stripes->box_message = ((void*)0);
      render_background = 1;
   }

   if (render_background)
   {
      stripes_draw_dark_layer(stripes, video_info, width, height);
      stripes_render_messagebox_internal(
            video_info, stripes, msg);
   }


   if (stripes->mouse_show)
   {
      menu_input_pointer_t pointer;
      menu_input_get_pointer_state(&pointer);

      menu_display_set_alpha(stripes_coord_white, MIN(stripes->alpha, 1.00f));
      menu_display_draw_cursor(
            video_info,
            &stripes_coord_white[0],
            stripes->cursor_size,
            stripes->textures.list[STRIPES_TEXTURE_POINTER],
            pointer.x,
            pointer.y,
            width,
            height);
   }

   menu_display_unset_viewport(video_info->width, video_info->height);
}
