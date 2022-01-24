#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ userdata; } ;
typedef  TYPE_5__ video_frame_info_t ;
struct gl_core_buffer_locations {scalar_t__ flat_ubo_vertex; scalar_t__ flat_ubo_fragment; } ;
struct TYPE_15__ {int id; int backend_data_size; scalar_t__ backend_data; } ;
struct TYPE_20__ {scalar_t__ prim_type; TYPE_4__* coords; scalar_t__ matrix_data; TYPE_1__ pipeline; scalar_t__ texture; } ;
typedef  TYPE_6__ menu_display_ctx_draw_t ;
struct TYPE_21__ {int /*<<< orphan*/  const* data; } ;
typedef  TYPE_7__ math_matrix_4x4 ;
struct TYPE_16__ {scalar_t__ flat_ubo_vertex; } ;
struct TYPE_17__ {TYPE_2__ alpha_blend_loc; int /*<<< orphan*/  alpha_blend; struct gl_core_buffer_locations bokeh_loc; int /*<<< orphan*/  bokeh; struct gl_core_buffer_locations snow_loc; int /*<<< orphan*/  snow; struct gl_core_buffer_locations snow_simple_loc; int /*<<< orphan*/  snow_simple; struct gl_core_buffer_locations ribbon_simple_loc; int /*<<< orphan*/  ribbon_simple; struct gl_core_buffer_locations ribbon_loc; int /*<<< orphan*/  ribbon; } ;
struct TYPE_22__ {TYPE_3__ pipelines; } ;
typedef  TYPE_8__ gl_core_t ;
struct TYPE_18__ {float* vertex; float* tex_coord; float* color; int vertices; } ;
typedef  scalar_t__ GLuint ;
typedef  int GLsizei ;
typedef  int /*<<< orphan*/  GLfloat ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  GL_ONE ; 
 int /*<<< orphan*/  GL_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_TEXTURE1 ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TRIANGLES ; 
 int /*<<< orphan*/  GL_TRIANGLE_STRIP ; 
 scalar_t__ MENU_DISPLAY_PRIM_TRIANGLES ; 
 scalar_t__ MENU_DISPLAY_PRIM_TRIANGLESTRIP ; 
#define  VIDEO_SHADER_MENU 132 
#define  VIDEO_SHADER_MENU_2 131 
#define  VIDEO_SHADER_MENU_3 130 
#define  VIDEO_SHADER_MENU_4 129 
#define  VIDEO_SHADER_MENU_5 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,float const*,int) ; 
 float* FUNC11 () ; 
 scalar_t__ FUNC12 (TYPE_5__*) ; 
 float* FUNC13 () ; 
 float* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,TYPE_5__*) ; 

__attribute__((used)) static void FUNC16(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   const float *vertex       = NULL;
   const float *tex_coord    = NULL;
   const float *color        = NULL;
   GLuint            texture = 0;
   gl_core_t *gl             = (gl_core_t*)video_info->userdata;
   const struct gl_core_buffer_locations *loc = NULL;

   if (!gl || !draw)
      return;

   texture            = (GLuint)draw->texture;
   vertex             = draw->coords->vertex;
   tex_coord          = draw->coords->tex_coord;
   color              = draw->coords->color;

   if (!vertex)
      vertex          = FUNC14();
   if (!tex_coord)
      tex_coord       = FUNC13();
   if (!color)
      color           = FUNC11();

   FUNC15(draw, video_info);

   FUNC0(GL_TEXTURE1);
   FUNC2(GL_TEXTURE_2D, texture);

   switch (draw->pipeline.id)
   {
      case VIDEO_SHADER_MENU:
      case VIDEO_SHADER_MENU_2:
         FUNC3(GL_ONE, GL_ONE);
         break;
      default:
         FUNC3(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
         break;
   }

   switch (draw->pipeline.id)
   {
#ifdef HAVE_SHADERPIPELINE
      case VIDEO_SHADER_MENU:
         glUseProgram(gl->pipelines.ribbon);
         loc = &gl->pipelines.ribbon_loc;
         break;

      case VIDEO_SHADER_MENU_2:
         glUseProgram(gl->pipelines.ribbon_simple);
         loc = &gl->pipelines.ribbon_simple_loc;
         break;

      case VIDEO_SHADER_MENU_3:
         glUseProgram(gl->pipelines.snow_simple);
         loc = &gl->pipelines.snow_simple_loc;
         break;

      case VIDEO_SHADER_MENU_4:
         glUseProgram(gl->pipelines.snow);
         loc = &gl->pipelines.snow_loc;
         break;

      case VIDEO_SHADER_MENU_5:
         glUseProgram(gl->pipelines.bokeh);
         loc = &gl->pipelines.bokeh_loc;
         break;
#endif

      default:
         FUNC8(gl->pipelines.alpha_blend);
         loc = NULL;
         break;
   }

   if (loc && loc->flat_ubo_vertex >= 0)
      FUNC7(loc->flat_ubo_vertex,
                   (GLsizei)((draw->pipeline.backend_data_size + 15) / 16),
                   (const GLfloat*)draw->pipeline.backend_data);

   if (loc && loc->flat_ubo_fragment >= 0)
      FUNC7(loc->flat_ubo_fragment,
                   (GLsizei)((draw->pipeline.backend_data_size + 15) / 16),
                   (const GLfloat*)draw->pipeline.backend_data);

   if (!loc)
   {
      const math_matrix_4x4 *mat = draw->matrix_data
                     ? (const math_matrix_4x4*)draw->matrix_data : (const math_matrix_4x4*)FUNC12(video_info);
      if (gl->pipelines.alpha_blend_loc.flat_ubo_vertex >= 0)
         FUNC7(gl->pipelines.alpha_blend_loc.flat_ubo_vertex,
                      4, mat->data);
   }

   FUNC6(0);
   FUNC6(1);
   FUNC6(2);

   FUNC10(gl, vertex,
         2 * sizeof(float) * draw->coords->vertices);
   FUNC9(0, 2, GL_FLOAT, GL_FALSE,
         2 * sizeof(float), (void *)(uintptr_t)0);
   FUNC10(gl, tex_coord,
         2 * sizeof(float) * draw->coords->vertices);
   FUNC9(1, 2, GL_FLOAT, GL_FALSE,
         2 * sizeof(float), (void *)(uintptr_t)0);
   FUNC10(gl, color,
         4 * sizeof(float) * draw->coords->vertices);
   FUNC9(2, 4, GL_FLOAT, GL_FALSE,
         4 * sizeof(float), (void *)(uintptr_t)0);

   if (draw->prim_type == MENU_DISPLAY_PRIM_TRIANGLESTRIP)
      FUNC5(GL_TRIANGLE_STRIP, 0, draw->coords->vertices);
   else if (draw->prim_type == MENU_DISPLAY_PRIM_TRIANGLES)
      FUNC5(GL_TRIANGLES, 0, draw->coords->vertices);

   FUNC4(0);
   FUNC4(1);
   FUNC4(2);
   FUNC1(GL_ARRAY_BUFFER, 0);

   FUNC2(GL_TEXTURE_2D, 0);
}