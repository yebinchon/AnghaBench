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
typedef  int /*<<< orphan*/  video_font_raster_block_t ;
struct TYPE_2__ {int /*<<< orphan*/ * block; } ;
typedef  TYPE_1__ gl1_raster_t ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(void *data, void *userdata)
{
   gl1_raster_t                *font = (gl1_raster_t*)data;
   video_font_raster_block_t *block = (video_font_raster_block_t*)userdata;

   if (font)
      font->block = block;
}