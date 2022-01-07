
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* atlas; scalar_t__ tex; } ;
typedef TYPE_2__ gl_core_raster_t ;
struct TYPE_4__ {int buffer; int height; int width; } ;


 int GL_CLAMP_TO_EDGE ;
 int GL_LINEAR ;
 int GL_PIXEL_UNPACK_BUFFER ;
 int GL_R8 ;
 int GL_RED ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNPACK_ROW_LENGTH ;
 int GL_UNSIGNED_BYTE ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,scalar_t__) ;
 int glDeleteTextures (int,scalar_t__*) ;
 int glGenTextures (int,scalar_t__*) ;
 int glPixelStorei (int ,int) ;
 int glTexParameteri (int ,int ,int ) ;
 int glTexStorage2D (int ,int,int ,int ,int ) ;
 int glTexSubImage2D (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static bool gl_core_raster_font_upload_atlas(gl_core_raster_t *font)
{
   if (font->tex)
      glDeleteTextures(1, &font->tex);
   glGenTextures(1, &font->tex);
   glBindTexture(GL_TEXTURE_2D, font->tex);

   glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
   glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
   glBindBuffer(GL_PIXEL_UNPACK_BUFFER, 0);
   glTexStorage2D(GL_TEXTURE_2D, 1, GL_R8, font->atlas->width, font->atlas->height);
   glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0,
                   font->atlas->width, font->atlas->height, GL_RED, GL_UNSIGNED_BYTE, font->atlas->buffer);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
   glBindTexture(GL_TEXTURE_2D, 0);

   return 1;
}
