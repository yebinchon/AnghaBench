
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_8__ {int vertices; } ;
struct TYPE_7__ {TYPE_2__ coords; } ;
struct TYPE_9__ {int fullscreen; TYPE_1__ carr; } ;
typedef TYPE_3__ video_font_raster_block_t ;
typedef int video_coords_t ;
struct TYPE_10__ {scalar_t__ gl; TYPE_3__* block; } ;
typedef TYPE_4__ gl_core_raster_t ;


 int GL_BLEND ;
 int glDisable (int ) ;
 int gl_core_raster_font_draw_vertices (TYPE_4__*,int *,int *) ;
 int gl_core_raster_font_setup_viewport (unsigned int,unsigned int,TYPE_4__*,int ) ;
 int video_driver_set_viewport (unsigned int,unsigned int,int ,int) ;

__attribute__((used)) static void gl_core_raster_font_flush_block(unsigned width, unsigned height,
      void *data, video_frame_info_t *video_info)
{
   gl_core_raster_t *font = (gl_core_raster_t*)data;
   video_font_raster_block_t *block = font ? font->block : ((void*)0);

   if (!font || !block || !block->carr.coords.vertices)
      return;

   gl_core_raster_font_setup_viewport(width, height, font, block->fullscreen);
   gl_core_raster_font_draw_vertices(font, (video_coords_t*)&block->carr.coords,
         video_info);

   if (font->gl)
   {
      glDisable(GL_BLEND);
      video_driver_set_viewport(width, height, block->fullscreen, 1);
   }
}
