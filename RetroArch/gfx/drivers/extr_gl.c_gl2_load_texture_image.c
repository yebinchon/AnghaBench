
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gl_capability_enum { ____Placeholder_gl_capability_enum } gl_capability_enum ;
typedef int GLvoid ;
typedef int GLsizei ;
typedef scalar_t__ GLint ;
typedef int GLenum ;


 scalar_t__ GL_BGRA_EXT ;
 int GL_CAPS_GLES3_SUPPORTED ;
 int GL_CAPS_TEX_STORAGE ;
 int GL_CAPS_TEX_STORAGE_EXT ;
 int gl2_size_format (scalar_t__*) ;
 int glTexImage2D (int ,scalar_t__,scalar_t__,int ,int ,scalar_t__,int ,int ,int const*) ;
 int glTexStorage2D (int ,int,scalar_t__,int ,int ) ;
 int glTexStorage2DEXT (int ,int,scalar_t__,int ,int ) ;
 scalar_t__ gl_check_capability (int) ;

__attribute__((used)) static void gl2_load_texture_image(GLenum target,
      GLint level,
      GLint internalFormat,
      GLsizei width,
      GLsizei height,
      GLint border,
      GLenum format,
      GLenum type,
      const GLvoid * data)
{




   enum gl_capability_enum cap = GL_CAPS_TEX_STORAGE;


   if (gl_check_capability(cap) && internalFormat != GL_BGRA_EXT)
   {
      gl2_size_format(&internalFormat);



      glTexStorage2D (target, 1, internalFormat, width, height);

   }
   else

   {



         gl2_size_format(&internalFormat);
      glTexImage2D(target, level, internalFormat, width,
            height, border, format, type, data);
   }
}
