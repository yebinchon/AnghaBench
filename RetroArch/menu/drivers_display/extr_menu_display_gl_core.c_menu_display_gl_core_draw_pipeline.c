
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int yflip ;
struct TYPE_10__ {scalar_t__ height; scalar_t__ width; scalar_t__ userdata; } ;
typedef TYPE_2__ video_frame_info_t ;
struct TYPE_11__ {int coords; } ;
typedef TYPE_3__ video_coord_array_t ;
typedef int uint8_t ;
typedef int t ;
struct video_coords {int vertices; } ;
typedef int output_size ;
struct TYPE_9__ {int id; int backend_data_size; int * backend_data; } ;
struct TYPE_12__ {int prim_type; struct video_coords* coords; TYPE_1__ pipeline; int * matrix_data; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_4__ menu_display_ctx_draw_t ;
typedef int math_matrix_4x4 ;
typedef int gl_core_t ;


 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;





 int memcpy (int *,float*,int) ;
 TYPE_3__* menu_display_get_coords_array () ;
 float* menu_display_gl_core_get_default_mvp (TYPE_2__*) ;

__attribute__((used)) static void menu_display_gl_core_draw_pipeline(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
}
