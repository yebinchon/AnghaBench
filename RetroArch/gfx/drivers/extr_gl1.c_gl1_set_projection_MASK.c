#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct video_ortho {int /*<<< orphan*/  zfar; int /*<<< orphan*/  znear; int /*<<< orphan*/  top; int /*<<< orphan*/  bottom; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  int /*<<< orphan*/  math_matrix_4x4 ;
struct TYPE_3__ {float rotation; int /*<<< orphan*/  mvp_no_rot; int /*<<< orphan*/  mvp; } ;
typedef  TYPE_1__ gl1_t ;

/* Variables and functions */
 float M_PI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,float) ; 

__attribute__((used)) static void FUNC3(gl1_t *gl1,
      struct video_ortho *ortho, bool allow_rotate)
{
   math_matrix_4x4 rot;

   /* Calculate projection. */
   FUNC1(gl1->mvp_no_rot, ortho->left, ortho->right,
         ortho->bottom, ortho->top, ortho->znear, ortho->zfar);

   if (!allow_rotate)
   {
      gl1->mvp = gl1->mvp_no_rot;
      return;
   }

   FUNC2(rot, M_PI * gl1->rotation / 180.0f);
   FUNC0(gl1->mvp, rot, gl1->mvp_no_rot);
}