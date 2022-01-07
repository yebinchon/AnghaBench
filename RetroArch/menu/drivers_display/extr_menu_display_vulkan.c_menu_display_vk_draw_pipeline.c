
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int yflip ;
struct TYPE_13__ {TYPE_1__* context; } ;
typedef TYPE_3__ vk_t ;
struct TYPE_14__ {scalar_t__ userdata; } ;
typedef TYPE_4__ video_frame_info_t ;
struct TYPE_15__ {int coords; } ;
typedef TYPE_5__ video_coord_array_t ;
typedef int uint8_t ;
typedef int t ;
struct video_coords {int vertices; } ;
typedef int output_size ;
struct TYPE_12__ {int id; int backend_data_size; int * backend_data; } ;
struct TYPE_16__ {int prim_type; struct video_coords* coords; TYPE_2__ pipeline; int * matrix_data; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_6__ menu_display_ctx_draw_t ;
typedef int math_matrix_4x4 ;
struct TYPE_11__ {scalar_t__ swapchain_height; scalar_t__ swapchain_width; } ;


 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;





 int memcpy (int *,float*,int) ;
 TYPE_5__* menu_display_get_coords_array () ;
 float* menu_display_vk_get_default_mvp (TYPE_4__*) ;

__attribute__((used)) static void menu_display_vk_draw_pipeline(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
}
