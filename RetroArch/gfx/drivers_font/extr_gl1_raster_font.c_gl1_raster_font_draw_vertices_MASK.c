#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_12__ {int vertices; float* vertex; int /*<<< orphan*/  tex_coord; int /*<<< orphan*/  color; } ;
typedef  TYPE_4__ video_coords_t ;
struct TYPE_13__ {TYPE_3__* gl; TYPE_1__* atlas; } ;
typedef  TYPE_5__ gl1_raster_t ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_2__ mvp; } ;
struct TYPE_9__ {int dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (float*,float*,int) ; 
 float* vertices3 ; 

__attribute__((used)) static void FUNC15(gl1_raster_t *font,
      const video_coords_t *coords,
      video_frame_info_t *video_info)
{
   if (font->atlas->dirty)
   {
      FUNC1(font);
      font->atlas->dirty   = false;
   }

   FUNC8(GL_PROJECTION);
   FUNC10();
   FUNC7(font->gl->mvp.data);

   FUNC8(GL_MODELVIEW);
   FUNC10();
   FUNC6();

   FUNC5(GL_COLOR_ARRAY);
   FUNC5(GL_VERTEX_ARRAY);
   FUNC5(GL_TEXTURE_COORD_ARRAY);

#ifdef VITA
   if (vertices3)
      free(vertices3);
   vertices3 = (float*)malloc(sizeof(float) * 3 * coords->vertices);
   int i;
   for (i = 0; i < coords->vertices; i++) {
      memcpy(&vertices3[i*3], &coords->vertex[i*2], sizeof(float) * 2);
      vertices3[i*3] -= 0.5f;
      vertices3[i*3+2] = 0.0f;
   }
   glVertexPointer(3, GL_FLOAT, 0, vertices3);   
#else
   FUNC12(2, GL_FLOAT, 0, coords->vertex);
#endif

   FUNC2(4, GL_FLOAT, 0, coords->color);
   FUNC11(2, GL_FLOAT, 0, coords->tex_coord);

   FUNC4(GL_TRIANGLES, 0, coords->vertices);

   FUNC3(GL_COLOR_ARRAY);
   FUNC3(GL_TEXTURE_COORD_ARRAY);
   FUNC3(GL_VERTEX_ARRAY);

   FUNC8(GL_MODELVIEW);
   FUNC9();
   FUNC8(GL_PROJECTION);
   FUNC9();
}