
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_shader {TYPE_1__* lut; int luts; } ;
struct TYPE_2__ {int wrap; int filter; int mipmap; int path; } ;
typedef int GLuint ;


 int GFX_MAX_TEXTURES ;
 int GL_TEXTURE_2D ;
 unsigned int MIN (int ,int ) ;
 int gl2_add_lut (int ,int ,int ,int ,unsigned int,int *) ;
 int glBindTexture (int ,int ) ;
 int glGenTextures (unsigned int,int *) ;

bool gl_load_luts(
      const void *shader_data,
      GLuint *textures_lut)
{
   unsigned i;
   const struct video_shader *shader =
      (const struct video_shader*)shader_data;
   unsigned num_luts = MIN(shader->luts, GFX_MAX_TEXTURES);

   if (!shader->luts)
      return 1;

   glGenTextures(num_luts, textures_lut);

   for (i = 0; i < num_luts; i++)
   {
      if (!gl2_add_lut(
               shader->lut[i].path,
               shader->lut[i].mipmap,
               shader->lut[i].filter,
               shader->lut[i].wrap,
               i, textures_lut))
         return 0;
   }

   glBindTexture(GL_TEXTURE_2D, 0);
   return 1;
}
