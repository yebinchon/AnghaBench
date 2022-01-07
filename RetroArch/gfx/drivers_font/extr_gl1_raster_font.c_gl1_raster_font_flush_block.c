
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_8__ {int vertices; } ;
struct TYPE_9__ {TYPE_1__ coords; } ;
struct TYPE_11__ {int fullscreen; TYPE_2__ carr; } ;
typedef TYPE_4__ video_font_raster_block_t ;
typedef int video_coords_t ;
struct TYPE_12__ {TYPE_3__* gl; TYPE_4__* block; } ;
typedef TYPE_5__ gl1_raster_t ;
struct TYPE_10__ {size_t tex_index; int * texture; } ;


 int GL_BLEND ;
 int GL_TEXTURE_2D ;
 int gl1_raster_font_draw_vertices (TYPE_5__*,int *,int *) ;
 int gl1_raster_font_setup_viewport (unsigned int,unsigned int,TYPE_5__*,int ) ;
 int glBindTexture (int ,int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int video_driver_set_viewport (unsigned int,unsigned int,int ,int) ;

__attribute__((used)) static void gl1_raster_font_flush_block(unsigned width, unsigned height,
      void *data, video_frame_info_t *video_info)
{
   gl1_raster_t *font = (gl1_raster_t*)data;
   video_font_raster_block_t *block = font ? font->block : ((void*)0);

   if (!font || !block || !block->carr.coords.vertices)
      return;

   gl1_raster_font_setup_viewport(width, height, font, block->fullscreen);
   gl1_raster_font_draw_vertices(font, (video_coords_t*)&block->carr.coords,
         video_info);

   if (font->gl)
   {

      glEnable(GL_TEXTURE_2D);
      glBindTexture(GL_TEXTURE_2D, font->gl->texture[font->gl->tex_index]);

      glDisable(GL_BLEND);
      video_driver_set_viewport(width, height, block->fullscreen, 1);
   }
}
