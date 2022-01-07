
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
typedef enum gfx_wrap_type { ____Placeholder_gfx_wrap_type } gfx_wrap_type ;
typedef int GLuint ;
typedef int GLint ;
typedef int GLenum ;


 int GL_CAPS_MIPMAP ;
 int GL_LINEAR ;
 int GL_LINEAR_MIPMAP_NEAREST ;
 int GL_NEAREST ;
 int GL_NEAREST_MIPMAP_NEAREST ;
 int GL_RGBA ;
 int GL_TEXTURE_2D ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNSIGNED_SHORT_4_4_4_4 ;
 int RARCH_GL_FORMAT32 ;
 int RARCH_GL_INTERNAL_FORMAT32 ;
 int RARCH_GL_TEXTURE_TYPE32 ;




 int gl2_wrap_type_to_enum (int) ;
 int glGenerateMipmap (int ) ;
 int glPixelStorei (int ,unsigned int) ;
 int glTexImage2D (int ,int ,int ,unsigned int,unsigned int,int ,int ,int ,void const*) ;
 int gl_bind_texture (int ,int ,int ,int ) ;
 int gl_check_capability (int ) ;
 int video_driver_supports_rgba () ;

__attribute__((used)) static void gl_load_texture_data(
      GLuint id,
      enum gfx_wrap_type wrap_type,
      enum texture_filter_type filter_type,
      unsigned alignment,
      unsigned width, unsigned height,
      const void *frame, unsigned base_size)
{
   GLint mag_filter, min_filter;
   bool want_mipmap = 0;
   bool use_rgba = video_driver_supports_rgba();
   bool rgb32 = (base_size == (sizeof(uint32_t)));
   GLenum wrap = gl2_wrap_type_to_enum(wrap_type);
   bool have_mipmap = gl_check_capability(GL_CAPS_MIPMAP);

   if (!have_mipmap)
   {

      switch (filter_type)
      {
         case 130:
            filter_type = 131;
            break;
         case 129:
            filter_type = 128;
            break;
         default:
            break;
      }
   }

   switch (filter_type)
   {
      case 130:
         min_filter = GL_LINEAR_MIPMAP_NEAREST;
         mag_filter = GL_LINEAR;
         want_mipmap = 1;
         break;
      case 129:
         min_filter = GL_NEAREST_MIPMAP_NEAREST;
         mag_filter = GL_NEAREST;
         want_mipmap = 1;
         break;
      case 128:
         min_filter = GL_NEAREST;
         mag_filter = GL_NEAREST;
         break;
      case 131:
      default:
         min_filter = GL_LINEAR;
         mag_filter = GL_LINEAR;
         break;
   }

   gl_bind_texture(id, wrap, mag_filter, min_filter);

   glPixelStorei(GL_UNPACK_ALIGNMENT, alignment);
   glTexImage2D(GL_TEXTURE_2D,
         0,
         (use_rgba || !rgb32) ? GL_RGBA : RARCH_GL_INTERNAL_FORMAT32,
         width, height, 0,
         (use_rgba || !rgb32) ? GL_RGBA : RARCH_GL_TEXTURE_TYPE32,
         (rgb32) ? RARCH_GL_FORMAT32 : GL_UNSIGNED_SHORT_4_4_4_4, frame);

   if (want_mipmap && have_mipmap)
      glGenerateMipmap(GL_TEXTURE_2D);
}
