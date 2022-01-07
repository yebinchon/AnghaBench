
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_13__ {int vertices; } ;
typedef TYPE_4__ video_coords_t ;
struct TYPE_14__ {TYPE_2__* gl; TYPE_3__* atlas; } ;
typedef TYPE_5__ gl_raster_t ;
struct TYPE_12__ {int dirty; } ;
struct TYPE_11__ {int mvp_no_rot; int shader_data; TYPE_1__* shader; } ;
struct TYPE_10__ {int (* set_mvp ) (int ,int *) ;int (* set_coords ) (int ,TYPE_4__ const*) ;} ;


 int GL_TRIANGLES ;
 int glDrawArrays (int ,int ,int ) ;
 int gl_raster_font_upload_atlas (TYPE_5__*) ;
 int stub1 (int ,TYPE_4__ const*) ;
 int stub2 (int ,int *) ;

__attribute__((used)) static void gl_raster_font_draw_vertices(gl_raster_t *font,
      const video_coords_t *coords,
      video_frame_info_t *video_info)
{
   if (font->atlas->dirty)
   {
      gl_raster_font_upload_atlas(font);
      font->atlas->dirty = 0;
   }

   font->gl->shader->set_coords(font->gl->shader_data, coords);
   font->gl->shader->set_mvp(font->gl->shader_data,
         &font->gl->mvp_no_rot);

   glDrawArrays(GL_TRIANGLES, 0, coords->vertices);
}
