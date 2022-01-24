#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  math_matrix_4x4 ;
struct TYPE_6__ {unsigned int rotation; int /*<<< orphan*/  ubo; } ;
struct TYPE_7__ {TYPE_1__ frame; int /*<<< orphan*/  mvp; int /*<<< orphan*/  mvp_no_rot; } ;
typedef  TYPE_2__ d3d12_video_t ;
struct TYPE_8__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ D3D12_RANGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 float M_PI ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float) ; 

__attribute__((used)) static void FUNC5(void* data, unsigned rotation)
{
   math_matrix_4x4  rot;
   math_matrix_4x4* mvp;
   D3D12_RANGE      read_range = { 0, 0 };
   d3d12_video_t*   d3d12      = (d3d12_video_t*)data;

   if (!d3d12)
      return;

   FUNC2(d3d12);
   d3d12->frame.rotation = rotation;

   FUNC4(rot, d3d12->frame.rotation * (M_PI / 2.0f));
   FUNC3(d3d12->mvp, rot, d3d12->mvp_no_rot);

   FUNC0(d3d12->frame.ubo, 0, &read_range, (void**)&mvp);
   *mvp = d3d12->mvp;
   FUNC1(d3d12->frame.ubo, 0, NULL);
}