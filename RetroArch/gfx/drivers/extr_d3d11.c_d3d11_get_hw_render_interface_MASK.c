#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct retro_hw_render_interface {int dummy; } ;
struct TYPE_3__ {int enable; int /*<<< orphan*/  iface; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
typedef  TYPE_2__ d3d11_video_t ;

/* Variables and functions */

__attribute__((used)) static bool
FUNC0(void* data, const struct retro_hw_render_interface** iface)
{
   d3d11_video_t* d3d11 = (d3d11_video_t*)data;
   *iface               = (const struct retro_hw_render_interface*)&d3d11->hw.iface;
   return d3d11->hw.enable;
}