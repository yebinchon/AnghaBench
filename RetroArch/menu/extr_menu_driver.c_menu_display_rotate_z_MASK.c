#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_4__ {int /*<<< orphan*/ * matrix; int /*<<< orphan*/  scale_z; int /*<<< orphan*/  scale_y; int /*<<< orphan*/  scale_x; int /*<<< orphan*/  scale_enable; int /*<<< orphan*/  rotation; } ;
typedef  TYPE_1__ menu_display_ctx_rotate_draw_t ;
typedef  int /*<<< orphan*/  math_matrix_4x4 ;
struct TYPE_5__ {scalar_t__ (* get_default_mvp ) (int /*<<< orphan*/ *) ;scalar_t__ handles_transform; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* menu_disp ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(menu_display_ctx_rotate_draw_t *draw,
      video_frame_info_t *video_info)
{
   math_matrix_4x4 matrix_rotated, matrix_scaled;
   math_matrix_4x4 *b = NULL;

   if (
         !draw                       ||
         !menu_disp                  ||
         !menu_disp->get_default_mvp ||
         menu_disp->handles_transform
      )
      return;

   b = (math_matrix_4x4*)menu_disp->get_default_mvp(video_info);

   if (!b)
      return;

   FUNC1(matrix_rotated, draw->rotation);
   FUNC0(*draw->matrix, matrix_rotated, *b);

   if (!draw->scale_enable)
      return;

   FUNC2(matrix_scaled,
         draw->scale_x, draw->scale_y, draw->scale_z);
   FUNC0(*draw->matrix, matrix_scaled, *draw->matrix);
}