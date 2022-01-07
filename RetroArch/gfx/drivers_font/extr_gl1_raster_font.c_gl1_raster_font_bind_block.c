
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_font_raster_block_t ;
struct TYPE_2__ {int * block; } ;
typedef TYPE_1__ gl1_raster_t ;



__attribute__((used)) static void gl1_raster_font_bind_block(void *data, void *userdata)
{
   gl1_raster_t *font = (gl1_raster_t*)data;
   video_font_raster_block_t *block = (video_font_raster_block_t*)userdata;

   if (font)
      font->block = block;
}
