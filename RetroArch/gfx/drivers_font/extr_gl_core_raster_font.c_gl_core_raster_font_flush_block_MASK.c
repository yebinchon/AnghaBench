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
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  vertices; } ;
struct TYPE_7__ {TYPE_2__ coords; } ;
struct TYPE_9__ {int /*<<< orphan*/  fullscreen; TYPE_1__ carr; } ;
typedef  TYPE_3__ video_font_raster_block_t ;
typedef  int /*<<< orphan*/  video_coords_t ;
struct TYPE_10__ {scalar_t__ gl; TYPE_3__* block; } ;
typedef  TYPE_4__ gl_core_raster_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(unsigned width, unsigned height,
      void *data, video_frame_info_t *video_info)
{
   gl_core_raster_t          *font       = (gl_core_raster_t*)data;
   video_font_raster_block_t *block = font ? font->block : NULL;

   if (!font || !block || !block->carr.coords.vertices)
      return;

   FUNC2(width, height, font, block->fullscreen);
   FUNC1(font, (video_coords_t*)&block->carr.coords,
         video_info);

   if (font->gl)
   {
      FUNC0(GL_BLEND);
      FUNC3(width, height, block->fullscreen, true);
   }
}