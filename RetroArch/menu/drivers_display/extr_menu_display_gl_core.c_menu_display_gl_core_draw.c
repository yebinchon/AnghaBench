
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ userdata; } ;
typedef TYPE_5__ video_frame_info_t ;
struct gl_core_buffer_locations {scalar_t__ flat_ubo_vertex; scalar_t__ flat_ubo_fragment; } ;
struct TYPE_15__ {int id; int backend_data_size; scalar_t__ backend_data; } ;
struct TYPE_20__ {scalar_t__ prim_type; TYPE_4__* coords; scalar_t__ matrix_data; TYPE_1__ pipeline; scalar_t__ texture; } ;
typedef TYPE_6__ menu_display_ctx_draw_t ;
struct TYPE_21__ {int const* data; } ;
typedef TYPE_7__ math_matrix_4x4 ;
struct TYPE_16__ {scalar_t__ flat_ubo_vertex; } ;
struct TYPE_17__ {TYPE_2__ alpha_blend_loc; int alpha_blend; struct gl_core_buffer_locations bokeh_loc; int bokeh; struct gl_core_buffer_locations snow_loc; int snow; struct gl_core_buffer_locations snow_simple_loc; int snow_simple; struct gl_core_buffer_locations ribbon_simple_loc; int ribbon_simple; struct gl_core_buffer_locations ribbon_loc; int ribbon; } ;
struct TYPE_22__ {TYPE_3__ pipelines; } ;
typedef TYPE_8__ gl_core_t ;
struct TYPE_18__ {float* vertex; float* tex_coord; float* color; int vertices; } ;
typedef scalar_t__ GLuint ;
typedef int GLsizei ;
typedef int GLfloat ;


 int GL_ARRAY_BUFFER ;
 int GL_FALSE ;
 int GL_FLOAT ;
 int GL_ONE ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_SRC_ALPHA ;
 int GL_TEXTURE1 ;
 int GL_TEXTURE_2D ;
 int GL_TRIANGLES ;
 int GL_TRIANGLE_STRIP ;
 scalar_t__ MENU_DISPLAY_PRIM_TRIANGLES ;
 scalar_t__ MENU_DISPLAY_PRIM_TRIANGLESTRIP ;





 int glActiveTexture (int ) ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,scalar_t__) ;
 int glBlendFunc (int ,int ) ;
 int glDisableVertexAttribArray (int) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableVertexAttribArray (int) ;
 int glUniform4fv (scalar_t__,int,int const*) ;
 int glUseProgram (int ) ;
 int glVertexAttribPointer (int,int,int ,int ,int,void*) ;
 int gl_core_bind_scratch_vbo (TYPE_8__*,float const*,int) ;
 float* menu_display_gl_core_get_default_color () ;
 scalar_t__ menu_display_gl_core_get_default_mvp (TYPE_5__*) ;
 float* menu_display_gl_core_get_default_tex_coords () ;
 float* menu_display_gl_core_get_default_vertices () ;
 int menu_display_gl_core_viewport (TYPE_6__*,TYPE_5__*) ;

__attribute__((used)) static void menu_display_gl_core_draw(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   const float *vertex = ((void*)0);
   const float *tex_coord = ((void*)0);
   const float *color = ((void*)0);
   GLuint texture = 0;
   gl_core_t *gl = (gl_core_t*)video_info->userdata;
   const struct gl_core_buffer_locations *loc = ((void*)0);

   if (!gl || !draw)
      return;

   texture = (GLuint)draw->texture;
   vertex = draw->coords->vertex;
   tex_coord = draw->coords->tex_coord;
   color = draw->coords->color;

   if (!vertex)
      vertex = menu_display_gl_core_get_default_vertices();
   if (!tex_coord)
      tex_coord = menu_display_gl_core_get_default_tex_coords();
   if (!color)
      color = menu_display_gl_core_get_default_color();

   menu_display_gl_core_viewport(draw, video_info);

   glActiveTexture(GL_TEXTURE1);
   glBindTexture(GL_TEXTURE_2D, texture);

   switch (draw->pipeline.id)
   {
      case 132:
      case 131:
         glBlendFunc(GL_ONE, GL_ONE);
         break;
      default:
         glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
         break;
   }

   switch (draw->pipeline.id)
   {
      default:
         glUseProgram(gl->pipelines.alpha_blend);
         loc = ((void*)0);
         break;
   }

   if (loc && loc->flat_ubo_vertex >= 0)
      glUniform4fv(loc->flat_ubo_vertex,
                   (GLsizei)((draw->pipeline.backend_data_size + 15) / 16),
                   (const GLfloat*)draw->pipeline.backend_data);

   if (loc && loc->flat_ubo_fragment >= 0)
      glUniform4fv(loc->flat_ubo_fragment,
                   (GLsizei)((draw->pipeline.backend_data_size + 15) / 16),
                   (const GLfloat*)draw->pipeline.backend_data);

   if (!loc)
   {
      const math_matrix_4x4 *mat = draw->matrix_data
                     ? (const math_matrix_4x4*)draw->matrix_data : (const math_matrix_4x4*)menu_display_gl_core_get_default_mvp(video_info);
      if (gl->pipelines.alpha_blend_loc.flat_ubo_vertex >= 0)
         glUniform4fv(gl->pipelines.alpha_blend_loc.flat_ubo_vertex,
                      4, mat->data);
   }

   glEnableVertexAttribArray(0);
   glEnableVertexAttribArray(1);
   glEnableVertexAttribArray(2);

   gl_core_bind_scratch_vbo(gl, vertex,
         2 * sizeof(float) * draw->coords->vertices);
   glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE,
         2 * sizeof(float), (void *)(uintptr_t)0);
   gl_core_bind_scratch_vbo(gl, tex_coord,
         2 * sizeof(float) * draw->coords->vertices);
   glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE,
         2 * sizeof(float), (void *)(uintptr_t)0);
   gl_core_bind_scratch_vbo(gl, color,
         4 * sizeof(float) * draw->coords->vertices);
   glVertexAttribPointer(2, 4, GL_FLOAT, GL_FALSE,
         4 * sizeof(float), (void *)(uintptr_t)0);

   if (draw->prim_type == MENU_DISPLAY_PRIM_TRIANGLESTRIP)
      glDrawArrays(GL_TRIANGLE_STRIP, 0, draw->coords->vertices);
   else if (draw->prim_type == MENU_DISPLAY_PRIM_TRIANGLES)
      glDrawArrays(GL_TRIANGLES, 0, draw->coords->vertices);

   glDisableVertexAttribArray(0);
   glDisableVertexAttribArray(1);
   glDisableVertexAttribArray(2);
   glBindBuffer(GL_ARRAY_BUFFER, 0);

   glBindTexture(GL_TEXTURE_2D, 0);
}
