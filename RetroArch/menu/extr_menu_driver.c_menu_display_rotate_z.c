
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_4__ {int * matrix; int scale_z; int scale_y; int scale_x; int scale_enable; int rotation; } ;
typedef TYPE_1__ menu_display_ctx_rotate_draw_t ;
typedef int math_matrix_4x4 ;
struct TYPE_5__ {scalar_t__ (* get_default_mvp ) (int *) ;scalar_t__ handles_transform; } ;


 int matrix_4x4_multiply (int ,int ,int ) ;
 int matrix_4x4_rotate_z (int ,int ) ;
 int matrix_4x4_scale (int ,int ,int ,int ) ;
 TYPE_3__* menu_disp ;
 scalar_t__ stub1 (int *) ;

void menu_display_rotate_z(menu_display_ctx_rotate_draw_t *draw,
      video_frame_info_t *video_info)
{
   math_matrix_4x4 matrix_rotated, matrix_scaled;
   math_matrix_4x4 *b = ((void*)0);

   if (
         !draw ||
         !menu_disp ||
         !menu_disp->get_default_mvp ||
         menu_disp->handles_transform
      )
      return;

   b = (math_matrix_4x4*)menu_disp->get_default_mvp(video_info);

   if (!b)
      return;

   matrix_4x4_rotate_z(matrix_rotated, draw->rotation);
   matrix_4x4_multiply(*draw->matrix, matrix_rotated, *b);

   if (!draw->scale_enable)
      return;

   matrix_4x4_scale(matrix_scaled,
         draw->scale_x, draw->scale_y, draw->scale_z);
   matrix_4x4_multiply(*draw->matrix, matrix_scaled, *draw->matrix);
}
