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
struct TYPE_3__ {int rotation; int /*<<< orphan*/ * ubo_mvp; } ;
typedef  TYPE_1__ wiiu_video_t ;
typedef  int /*<<< orphan*/  math_matrix_4x4 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK ; 
 int M_PI_2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(wiiu_video_t *wiiu)
{
   math_matrix_4x4 proj, rot;
   FUNC2(proj, 0, 1, 1, 0, -1, 1);
   FUNC3(rot, wiiu->rotation * -M_PI_2);
   FUNC1((*wiiu->ubo_mvp), rot, proj);
   FUNC0(GX2_INVALIDATE_MODE_CPU_UNIFORM_BLOCK, wiiu->ubo_mvp, sizeof(*wiiu->ubo_mvp));
}