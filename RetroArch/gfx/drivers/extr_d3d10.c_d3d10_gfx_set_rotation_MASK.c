#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  math_matrix_4x4 ;
struct TYPE_4__ {int /*<<< orphan*/  ubo; } ;
struct TYPE_5__ {int /*<<< orphan*/  mvp; } ;
struct TYPE_6__ {TYPE_1__ frame; int /*<<< orphan*/  mvp; TYPE_2__ ubo_values; } ;
typedef  TYPE_3__ d3d10_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3D10_MAP_WRITE_DISCARD ; 
 float M_PI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(void* data, unsigned rotation)
{
   math_matrix_4x4 rot;
   void* mapped_ubo      = NULL;
   d3d10_video_t*  d3d10 = (d3d10_video_t*)data;

   if (!d3d10)
      return;

   FUNC3(rot, rotation * (M_PI / 2.0f));
   FUNC2(d3d10->mvp, rot, d3d10->ubo_values.mvp);

   FUNC0(d3d10->frame.ubo, D3D10_MAP_WRITE_DISCARD, 0, &mapped_ubo);
   *(math_matrix_4x4*)mapped_ubo = d3d10->mvp;
   FUNC1(d3d10->frame.ubo);
}