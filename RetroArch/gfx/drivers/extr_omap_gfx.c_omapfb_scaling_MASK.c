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
struct TYPE_3__ {scalar_t__ nat_h; scalar_t__ nat_w; } ;
typedef  TYPE_1__ omapfb_data_t ;

/* Variables and functions */

__attribute__((used)) static float FUNC0(omapfb_data_t *pdata, int width, int height)
{
   const float w_factor = (float)pdata->nat_w / (float)width;
   const float h_factor = (float)pdata->nat_h / (float)height;

   return (w_factor < h_factor ? w_factor : h_factor);
}