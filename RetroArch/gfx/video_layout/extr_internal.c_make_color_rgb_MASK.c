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
struct TYPE_3__ {float r; float g; float b; float a; } ;
typedef  TYPE_1__ video_layout_color_t ;

/* Variables and functions */

video_layout_color_t FUNC0(float r, float g, float b)
{
   video_layout_color_t color;
   color.r = r;
   color.g = g;
   color.b = b;
   color.a = 1.0f;
   return color;
}