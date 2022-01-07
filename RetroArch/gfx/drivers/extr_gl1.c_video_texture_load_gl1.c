
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct texture_image {int pixels; int height; int width; } ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
typedef int GLuint ;


 int RARCH_WRAP_EDGE ;
 int gl1_load_texture_data (int ,int ,int,int,int ,int ,int ,int) ;
 int glGenTextures (int,int *) ;

__attribute__((used)) static void video_texture_load_gl1(
      struct texture_image *ti,
      enum texture_filter_type filter_type,
      uintptr_t *id)
{

   glGenTextures(1, (GLuint*)id);
   gl1_load_texture_data((GLuint)*id,
         RARCH_WRAP_EDGE, filter_type,
         4 ,
         ti->width, ti->height, ti->pixels,
         sizeof(uint32_t)
         );
}
