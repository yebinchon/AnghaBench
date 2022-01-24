#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * matrix; TYPE_6__* data; } ;
typedef  TYPE_3__ video_shader_ctx_mvp_t ;
struct TYPE_15__ {scalar_t__ userdata; } ;
typedef  TYPE_4__ video_frame_info_t ;
struct TYPE_16__ {TYPE_1__* coords; int /*<<< orphan*/  prim_type; scalar_t__ matrix_data; scalar_t__ texture; } ;
typedef  TYPE_5__ menu_display_ctx_draw_t ;
typedef  int /*<<< orphan*/  math_matrix_4x4 ;
struct TYPE_13__ {int /*<<< orphan*/  color; } ;
struct TYPE_17__ {int /*<<< orphan*/  white_color_ptr; TYPE_2__ coords; } ;
typedef  TYPE_6__ gl1_t ;
struct TYPE_12__ {float* vertex; int vertices; void* tex_coord; int /*<<< orphan*/  color; void* lut_tex_coord; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (float*,float*,int) ; 
 scalar_t__ FUNC16 (TYPE_4__*) ; 
 void* FUNC17 () ; 
 float* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 float* vertices3 ; 

__attribute__((used)) static void FUNC21(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   video_shader_ctx_mvp_t mvp;
   gl1_t             *gl1          = (gl1_t*)video_info->userdata;

   if (!gl1 || !draw)
      return;

   if (!draw->coords->vertex)
      draw->coords->vertex = FUNC18();
   if (!draw->coords->tex_coord)
      draw->coords->tex_coord = FUNC17();
   if (!draw->coords->lut_tex_coord)
      draw->coords->lut_tex_coord = FUNC17();

   FUNC19(draw, video_info);

   FUNC5(GL_TEXTURE_2D);

   FUNC1(GL_TEXTURE_2D, (GLuint)draw->texture);

   mvp.data   = gl1;
   mvp.matrix = draw->matrix_data ? (math_matrix_4x4*)draw->matrix_data
      : (math_matrix_4x4*)FUNC16(video_info);

   FUNC9(GL_PROJECTION);
   FUNC11();
   FUNC8((const GLfloat*)mvp.matrix);

   FUNC9(GL_MODELVIEW);
   FUNC11();
   FUNC7();

   FUNC6(GL_COLOR_ARRAY);
   FUNC6(GL_VERTEX_ARRAY);
   FUNC6(GL_TEXTURE_COORD_ARRAY);

#ifdef VITA
   if (vertices3)
      free(vertices3);
   vertices3 = (float*)malloc(sizeof(float) * 3 * draw->coords->vertices);
   int i;
   for (i = 0; i < draw->coords->vertices; i++) {
      memcpy(&vertices3[i*3], &draw->coords->vertex[i*2], sizeof(float) * 2);
      vertices3[i*3] -= 0.5f;
      vertices3[i*3+2] = 0.0f;
   }
   glVertexPointer(3, GL_FLOAT, 0, vertices3);   
#else
   FUNC13(2, GL_FLOAT, 0, draw->coords->vertex);
#endif

   FUNC2(4, GL_FLOAT, 0, draw->coords->color);
   FUNC12(2, GL_FLOAT, 0, draw->coords->tex_coord);

   FUNC4(FUNC20(
            draw->prim_type), 0, draw->coords->vertices);

   FUNC3(GL_COLOR_ARRAY);
   FUNC3(GL_TEXTURE_COORD_ARRAY);
   FUNC3(GL_VERTEX_ARRAY);

   FUNC9(GL_MODELVIEW);
   FUNC10();
   FUNC9(GL_PROJECTION);
   FUNC10();

   gl1->coords.color = gl1->white_color_ptr;
}