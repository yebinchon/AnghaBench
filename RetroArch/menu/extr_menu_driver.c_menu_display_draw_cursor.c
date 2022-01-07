
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct video_coords {int vertices; float const* color; int * lut_tex_coord; int * tex_coord; int * vertex; } ;
struct TYPE_8__ {int menu_mouse_enable; scalar_t__ video_fullscreen; } ;
struct TYPE_10__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_9__ {scalar_t__ id; } ;
struct TYPE_11__ {float x; int y; float width; float height; uintptr_t texture; TYPE_2__ pipeline; int prim_type; int * matrix_data; struct video_coords* coords; } ;
typedef TYPE_4__ menu_display_ctx_draw_t ;
struct TYPE_12__ {int (* blend_end ) (int *) ;int (* blend_begin ) (int *) ;} ;


 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;
 TYPE_3__* config_get_ptr () ;
 TYPE_6__* menu_disp ;
 int menu_display_draw (TYPE_4__*,int *) ;
 int menu_display_has_windowed ;
 int stub1 (int *) ;
 int stub2 (int *) ;

void menu_display_draw_cursor(
      video_frame_info_t *video_info,
      float *color, float cursor_size, uintptr_t texture,
      float x, float y, unsigned width, unsigned height)
{
   menu_display_ctx_draw_t draw;
   struct video_coords coords;
   settings_t *settings = config_get_ptr();
   bool cursor_visible = settings->bools.video_fullscreen ||
       !menu_display_has_windowed;
   if (!settings->bools.menu_mouse_enable || !cursor_visible)
      return;

   coords.vertices = 4;
   coords.vertex = ((void*)0);
   coords.tex_coord = ((void*)0);
   coords.lut_tex_coord = ((void*)0);
   coords.color = (const float*)color;

   if (menu_disp && menu_disp->blend_begin)
      menu_disp->blend_begin(video_info);

   draw.x = x - (cursor_size / 2);
   draw.y = (int)height - y - (cursor_size / 2);
   draw.width = cursor_size;
   draw.height = cursor_size;
   draw.coords = &coords;
   draw.matrix_data = ((void*)0);
   draw.texture = texture;
   draw.prim_type = MENU_DISPLAY_PRIM_TRIANGLESTRIP;
   draw.pipeline.id = 0;

   menu_display_draw(&draw, video_info);

   if (menu_disp && menu_disp->blend_end)
      menu_disp->blend_end(video_info);
}
