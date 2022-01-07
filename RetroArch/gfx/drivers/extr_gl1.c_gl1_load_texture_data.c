
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


 int GL_LINEAR ;
 int GL_NEAREST ;
 int GL_RGBA ;
 int GL_TEXTURE_2D ;
 int GL_UNPACK_ALIGNMENT ;
 int GL_UNSIGNED_BYTE ;
 int RARCH_GL1_FORMAT32 ;
 int RARCH_GL1_INTERNAL_FORMAT32 ;
 int RARCH_GL1_TEXTURE_TYPE32 ;




 int gl1_bind_texture (int ,int ,int ,int ) ;
 int gl1_wrap_type_to_enum (int) ;
 int glPixelStorei (int ,unsigned int) ;
 int glTexImage2D (int ,int ,int ,unsigned int,unsigned int,int ,int ,int ,void const*) ;
 int video_driver_supports_rgba () ;

__attribute__((used)) static void gl1_load_texture_data(
      GLuint id,
      enum gfx_wrap_type wrap_type,
      enum texture_filter_type filter_type,
      unsigned alignment,
      unsigned width, unsigned height,
      const void *frame, unsigned base_size)
{
   GLint mag_filter, min_filter;
   bool use_rgba = video_driver_supports_rgba();
   bool rgb32 = (base_size == (sizeof(uint32_t)));
   GLenum wrap = gl1_wrap_type_to_enum(wrap_type);


   switch (filter_type)
   {
      case 129:
      case 128:
         min_filter = GL_NEAREST;
         mag_filter = GL_NEAREST;
         break;
      case 130:
      case 131:
      default:
         min_filter = GL_LINEAR;
         mag_filter = GL_LINEAR;
         break;
   }

   gl1_bind_texture(id, wrap, mag_filter, min_filter);


   glPixelStorei(GL_UNPACK_ALIGNMENT, alignment);


   glTexImage2D(GL_TEXTURE_2D,
         0,
         (use_rgba || !rgb32) ? GL_RGBA : RARCH_GL1_INTERNAL_FORMAT32,
         width, height, 0,
         (use_rgba || !rgb32) ? GL_RGBA : RARCH_GL1_TEXTURE_TYPE32,
         (rgb32) ? RARCH_GL1_FORMAT32 : GL_UNSIGNED_BYTE, frame);
}
