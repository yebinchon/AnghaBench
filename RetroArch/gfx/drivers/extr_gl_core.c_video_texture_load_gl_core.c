
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct texture_image {int pixels; int height; int width; } ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
typedef uintptr_t GLuint ;
typedef int GLenum ;


 int GL_BLUE ;
 int GL_CLAMP_TO_EDGE ;
 int GL_LINEAR ;
 int GL_LINEAR_MIPMAP_LINEAR ;
 int GL_LINEAR_MIPMAP_NEAREST ;
 int GL_NEAREST ;
 int GL_RED ;
 int GL_RGBA ;
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




 int glBindTexture (int ,uintptr_t) ;
 int glGenTextures (int,uintptr_t*) ;
 int glGenerateMipmap (int ) ;
 int glPixelStorei (int ,int) ;
 int glTexParameteri (int ,int ,int ) ;
 int glTexStorage2D (int ,unsigned int,int ,int ,int ) ;
 int glTexSubImage2D (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 unsigned int gl_core_num_miplevels (int ,int ) ;

__attribute__((used)) static void video_texture_load_gl_core(
      const struct texture_image *ti,
      enum texture_filter_type filter_type,
      uintptr_t *idptr)
{

   GLuint id;
   unsigned levels;
   GLenum mag_filter, min_filter;

   glGenTextures(1, &id);
   *idptr = id;
   glBindTexture(GL_TEXTURE_2D, id);

   levels = 1;
   if (filter_type == 130 || filter_type == 129)
      levels = gl_core_num_miplevels(ti->width, ti->height);

   glTexStorage2D(GL_TEXTURE_2D, levels, GL_RGBA8, ti->width, ti->height);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

   switch (filter_type)
   {
      case 131:
         mag_filter = GL_LINEAR;
         min_filter = GL_LINEAR;
         break;

      case 128:
         mag_filter = GL_NEAREST;
         min_filter = GL_NEAREST;
         break;

      case 129:
         mag_filter = GL_LINEAR;
         min_filter = GL_LINEAR_MIPMAP_NEAREST;
         break;

      case 130:
   default:
         mag_filter = GL_LINEAR;
         min_filter = GL_LINEAR_MIPMAP_LINEAR;
         break;
   }
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, mag_filter);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, min_filter);

   glPixelStorei(GL_UNPACK_ALIGNMENT, 4);
   glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
   glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0,
                   ti->width, ti->height, GL_RGBA, GL_UNSIGNED_BYTE, ti->pixels);

   if (levels > 1)
      glGenerateMipmap(GL_TEXTURE_2D);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_R, GL_BLUE);
   glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_B, GL_RED);
   glBindTexture(GL_TEXTURE_2D, 0);
}
