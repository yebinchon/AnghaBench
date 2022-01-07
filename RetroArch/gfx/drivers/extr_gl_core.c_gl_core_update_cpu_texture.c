
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gl_core_streamed_texture {unsigned int width; unsigned int height; scalar_t__ tex; } ;
struct TYPE_4__ {scalar_t__ rgb32; } ;
struct TYPE_5__ {TYPE_1__ video_info; } ;
typedef TYPE_2__ gl_core_t ;


 int GL_BLUE ;
 int GL_PIXEL_UNPACK_BUFFER ;
 int GL_RED ;
 int GL_RGB ;
 int GL_RGB565 ;
 int GL_RGBA ;
 int GL_RGBA8 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_SWIZZLE_B ;
 int GL_TEXTURE_SWIZZLE_R ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNPACK_ROW_LENGTH ;
 int GL_UNSIGNED_BYTE ;
 int GL_UNSIGNED_SHORT_5_6_5 ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,scalar_t__) ;
 int glDeleteTextures (int,scalar_t__*) ;
 int glGenTextures (int,scalar_t__*) ;
 int glPixelStorei (int ,int) ;
 int glTexParameteri (int ,int ,int ) ;
 int glTexStorage2D (int ,int,int ,unsigned int,unsigned int) ;
 int glTexSubImage2D (int ,int ,int ,int ,unsigned int,unsigned int,int ,int ,void const*) ;

__attribute__((used)) static void gl_core_update_cpu_texture(gl_core_t *gl,
                                       struct gl_core_streamed_texture *streamed,
                                       const void *frame, unsigned width, unsigned height, unsigned pitch)
{
   if (width != streamed->width || height != streamed->height)
   {
      if (streamed->tex != 0)
         glDeleteTextures(1, &streamed->tex);
      glGenTextures(1, &streamed->tex);
      glBindTexture(GL_TEXTURE_2D, streamed->tex);
      glTexStorage2D(GL_TEXTURE_2D, 1, gl->video_info.rgb32 ? GL_RGBA8 : GL_RGB565,
                     width, height);
      streamed->width = width;
      streamed->height = height;

      if (gl->video_info.rgb32)
      {
         glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_R, GL_BLUE);
         glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_B, GL_RED);
      }
   }
   else
      glBindTexture(GL_TEXTURE_2D, streamed->tex);

   glBindBuffer(GL_PIXEL_UNPACK_BUFFER, 0);
   if (gl->video_info.rgb32)
   {
      glPixelStorei(GL_UNPACK_ROW_LENGTH, pitch >> 2);
      glPixelStorei(GL_UNPACK_ALIGNMENT, 4);
      glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0,
                      width, height, GL_RGBA, GL_UNSIGNED_BYTE, frame);
   }
   else
   {
      glPixelStorei(GL_UNPACK_ROW_LENGTH, pitch >> 1);
      glPixelStorei(GL_UNPACK_ALIGNMENT, 2);
      glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0,
                      width, height, GL_RGB, GL_UNSIGNED_SHORT_5_6_5, frame);
   }
}
