
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ menu_linear_filter; } ;
struct TYPE_7__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {float menu_texture_alpha; scalar_t__ menu_texture; } ;
typedef TYPE_3__ gl_core_t ;
typedef int GLenum ;


 int GL_BLUE ;
 int GL_CLAMP_TO_EDGE ;
 int GL_LINEAR ;
 int GL_NEAREST ;
 int GL_PIXEL_UNPACK_BUFFER ;
 int GL_RED ;
 int GL_RGBA ;
 int GL_RGBA4 ;
 int GL_RGBA8 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_TEXTURE_SWIZZLE_B ;
 int GL_TEXTURE_SWIZZLE_R ;
 int GL_TEXTURE_WRAP_S ;
 int GL_TEXTURE_WRAP_T ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNPACK_ROW_LENGTH ;
 int GL_UNSIGNED_BYTE ;
 int GL_UNSIGNED_SHORT_4_4_4_4 ;
 TYPE_2__* config_get_ptr () ;
 int glBindBuffer (int ,int ) ;
 int glBindTexture (int ,scalar_t__) ;
 int glDeleteTextures (int,scalar_t__*) ;
 int glGenTextures (int,scalar_t__*) ;
 int glPixelStorei (int ,unsigned int) ;
 int glTexParameteri (int ,int ,int ) ;
 int glTexStorage2D (int ,int,int ,unsigned int,unsigned int) ;
 int glTexSubImage2D (int ,int ,int ,int ,unsigned int,unsigned int,int ,int ,void const*) ;
 int gl_core_context_bind_hw_render (TYPE_3__*,int) ;

__attribute__((used)) static void gl_core_set_texture_frame(void *data,
      const void *frame, bool rgb32, unsigned width, unsigned height,
      float alpha)
{
   GLenum menu_filter;
   settings_t *settings = config_get_ptr();
   unsigned base_size = rgb32 ? sizeof(uint32_t) : sizeof(uint16_t);
   gl_core_t *gl = (gl_core_t*)data;
   if (!gl)
      return;

   gl_core_context_bind_hw_render(gl, 0);
   menu_filter = settings->bools.menu_linear_filter ? GL_LINEAR : GL_NEAREST;

   if (gl->menu_texture)
      glDeleteTextures(1, &gl->menu_texture);
   glGenTextures(1, &gl->menu_texture);
   glBindTexture(GL_TEXTURE_2D, gl->menu_texture);
   glTexStorage2D(GL_TEXTURE_2D, 1, rgb32 ? GL_RGBA8 : GL_RGBA4, width, height);

   glPixelStorei(GL_UNPACK_ALIGNMENT, base_size);
   glBindBuffer(GL_PIXEL_UNPACK_BUFFER, 0);
   glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
   glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0,
                   width, height, GL_RGBA, rgb32 ? GL_UNSIGNED_BYTE : GL_UNSIGNED_SHORT_4_4_4_4, frame);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, menu_filter);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, menu_filter);

   if (rgb32)
   {
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_R, GL_BLUE);
      glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_B, GL_RED);
   }

   glBindTexture(GL_TEXTURE_2D, 0);
   gl->menu_texture_alpha = alpha;
   gl_core_context_bind_hw_render(gl, 1);
}
