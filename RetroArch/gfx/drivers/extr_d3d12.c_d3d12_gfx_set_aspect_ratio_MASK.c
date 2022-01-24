#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int keep_aspect; int resize_viewport; } ;
typedef  TYPE_1__ d3d12_video_t ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(void* data, unsigned aspect_ratio_idx)
{
   d3d12_video_t* d3d12 = (d3d12_video_t*)data;

   if (!d3d12)
      return;

   d3d12->keep_aspect     = true;
   d3d12->resize_viewport = true;
}