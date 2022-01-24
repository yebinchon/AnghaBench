#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ userdata; } ;
typedef  TYPE_1__ video_frame_info_t ;
struct TYPE_5__ {int /*<<< orphan*/  blend_disable; int /*<<< orphan*/  context; } ;
typedef  TYPE_2__ d3d11_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3D11_DEFAULT_SAMPLE_MASK ; 

__attribute__((used)) static void FUNC1(video_frame_info_t *video_info)
{
   d3d11_video_t* d3d11 = (d3d11_video_t*)video_info->userdata;
   FUNC0(d3d11->context,
         d3d11->blend_disable, NULL, D3D11_DEFAULT_SAMPLE_MASK);
}