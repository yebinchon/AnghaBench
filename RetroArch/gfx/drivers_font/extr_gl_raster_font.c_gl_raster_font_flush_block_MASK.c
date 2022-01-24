#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_8__ {int /*<<< orphan*/  vertices; } ;
struct TYPE_9__ {TYPE_1__ coords; } ;
struct TYPE_11__ {int /*<<< orphan*/  fullscreen; TYPE_2__ carr; } ;
typedef  TYPE_4__ video_font_raster_block_t ;
typedef  int /*<<< orphan*/  video_coords_t ;
struct TYPE_12__ {TYPE_3__* gl; TYPE_4__* block; } ;
typedef  TYPE_5__ gl_raster_t ;
struct TYPE_10__ {size_t tex_index; int /*<<< orphan*/ * texture; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(unsigned width, unsigned height,
      void *data, video_frame_info_t *video_info)
{
   gl_raster_t          *font       = (gl_raster_t*)data;
   video_font_raster_block_t *block = font ? font->block : NULL;

   if (!font || !block || !block->carr.coords.vertices)
      return;

   FUNC3(width, height, font, block->fullscreen);
   FUNC2(font, (video_coords_t*)&block->carr.coords,
         video_info);

   if (font->gl)
   {
      /* restore viewport */
      FUNC0(GL_TEXTURE_2D, font->gl->texture[font->gl->tex_index]);

      FUNC1(GL_BLEND);
      FUNC4(width, height, block->fullscreen, true);
   }
}