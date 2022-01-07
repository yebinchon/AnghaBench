
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t tex_width; int tex_height; TYPE_1__* atlas; } ;
typedef TYPE_2__ gl1_raster_t ;
struct TYPE_4__ {unsigned int height; unsigned int width; int * buffer; } ;
typedef void* GLint ;
typedef void* GLenum ;


 void* GL_LUMINANCE_ALPHA ;
 int GL_TEXTURE_2D ;
 int GL_UNSIGNED_BYTE ;
 scalar_t__ calloc (int ,size_t) ;
 int free (int *) ;
 int glTexImage2D (int ,int ,void*,unsigned int,int ,int ,void*,int ,int *) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static bool gl1_raster_font_upload_atlas(gl1_raster_t *font)
{
   unsigned i, j;
   GLint gl_internal = GL_LUMINANCE_ALPHA;
   GLenum gl_format = GL_LUMINANCE_ALPHA;
   size_t ncomponents = 2;
   uint8_t *tmp = ((void*)0);

   tmp = (uint8_t*)calloc(font->tex_height, font->tex_width * ncomponents);

   switch (ncomponents)
   {
      case 1:
         for (i = 0; i < font->atlas->height; ++i)
         {
            const uint8_t *src = &font->atlas->buffer[i * font->atlas->width];
            uint8_t *dst = &tmp[i * font->tex_width * ncomponents];

            memcpy(dst, src, font->atlas->width);
         }
         break;
      case 2:
         for (i = 0; i < font->atlas->height; ++i)
         {
            const uint8_t *src = &font->atlas->buffer[i * font->atlas->width];
            uint8_t *dst = &tmp[i * font->tex_width * ncomponents];

            for (j = 0; j < font->atlas->width; ++j)
            {
               *dst++ = 0xff;
               *dst++ = *src++;
            }
         }
         break;
   }

   glTexImage2D(GL_TEXTURE_2D, 0, gl_internal, font->tex_width, font->tex_height,
         0, gl_format, GL_UNSIGNED_BYTE, tmp);

   free(tmp);

   return 1;
}
