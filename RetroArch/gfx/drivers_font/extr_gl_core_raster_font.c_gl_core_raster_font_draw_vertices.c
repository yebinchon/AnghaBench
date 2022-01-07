
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int video_frame_info_t ;
struct TYPE_16__ {int vertices; int color; int tex_coord; int vertex; } ;
typedef TYPE_5__ video_coords_t ;
struct TYPE_17__ {TYPE_10__* gl; int tex; TYPE_1__* atlas; } ;
typedef TYPE_6__ gl_core_raster_t ;
struct TYPE_15__ {int data; } ;
struct TYPE_13__ {scalar_t__ flat_ubo_vertex; } ;
struct TYPE_14__ {TYPE_2__ font_loc; } ;
struct TYPE_12__ {int dirty; } ;
struct TYPE_11__ {TYPE_4__ mvp_no_rot; TYPE_3__ pipelines; } ;


 int GL_ARRAY_BUFFER ;
 int GL_FALSE ;
 int GL_FLOAT ;
 int GL_TEXTURE1 ;
 int GL_TEXTURE_2D ;
 int GL_TRIANGLES ;
 int glActiveTexture (int ) ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,int ) ;
 int glDisableVertexAttribArray (int) ;
 int glDrawArrays (int ,int ,int) ;
 int glEnableVertexAttribArray (int) ;
 int glUniform4fv (scalar_t__,int,int ) ;
 int glVertexAttribPointer (int,int,int ,int ,int,void*) ;
 int gl_core_bind_scratch_vbo (TYPE_10__*,int ,int) ;
 int gl_core_raster_font_upload_atlas (TYPE_6__*) ;

__attribute__((used)) static void gl_core_raster_font_draw_vertices(gl_core_raster_t *font,
      const video_coords_t *coords,
      video_frame_info_t *video_info)
{
   if (font->atlas->dirty)
   {
      gl_core_raster_font_upload_atlas(font);
      font->atlas->dirty = 0;
   }

   glActiveTexture(GL_TEXTURE1);
   glBindTexture(GL_TEXTURE_2D, font->tex);

   if (font->gl->pipelines.font_loc.flat_ubo_vertex >= 0)
   {
      glUniform4fv(font->gl->pipelines.font_loc.flat_ubo_vertex,
                   4, font->gl->mvp_no_rot.data);
   }

   glEnableVertexAttribArray(0);
   glEnableVertexAttribArray(1);
   glEnableVertexAttribArray(2);

   gl_core_bind_scratch_vbo(font->gl, coords->vertex, 2 * sizeof(float) * coords->vertices);
   glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 2 * sizeof(float), (void *)(uintptr_t)0);

   gl_core_bind_scratch_vbo(font->gl, coords->tex_coord, 2 * sizeof(float) * coords->vertices);
   glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 2 * sizeof(float), (void *)(uintptr_t)0);

   gl_core_bind_scratch_vbo(font->gl, coords->color, 4 * sizeof(float) * coords->vertices);
   glVertexAttribPointer(2, 4, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void *)(uintptr_t)0);

   glDrawArrays(GL_TRIANGLES, 0, coords->vertices);

   glDisableVertexAttribArray(0);
   glDisableVertexAttribArray(1);
   glDisableVertexAttribArray(2);
   glBindBuffer(GL_ARRAY_BUFFER, 0);
}
