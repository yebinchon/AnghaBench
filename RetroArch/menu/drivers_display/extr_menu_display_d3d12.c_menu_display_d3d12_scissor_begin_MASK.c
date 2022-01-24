#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ userdata; } ;
typedef  TYPE_2__ video_frame_info_t ;
struct TYPE_7__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_9__ {TYPE_1__ queue; } ;
typedef  TYPE_3__ d3d12_video_t ;
struct TYPE_10__ {int left; int top; unsigned int right; unsigned int bottom; } ;
typedef  TYPE_4__ D3D12_RECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 

void FUNC1(video_frame_info_t *video_info, int x, int y, unsigned width, unsigned height)
{
   D3D12_RECT rect;
   d3d12_video_t *d3d12 = (d3d12_video_t*)video_info->userdata;

   if (!d3d12 || !width || !height)
      return;

   rect.left            = x;
   rect.top             = y;
   rect.right           = width + x;
   rect.bottom          = height + y;

   FUNC0(d3d12->queue.cmd, 1, &rect);
}