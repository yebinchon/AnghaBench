
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int texture_size ;
typedef int texture ;
typedef int tex_coord ;
struct shader_uniforms_frame {int tex_coord; void* input_size; void* texture_size; void* texture; } ;
typedef int input_size ;
typedef int glsl_shader_data_t ;
typedef int GLuint ;


 int gl_glsl_get_attrib (int *,int ,char*) ;
 void* gl_glsl_get_uniform (int *,int ,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void gl_glsl_find_uniforms_frame(glsl_shader_data_t *glsl,
      GLuint prog,
      struct shader_uniforms_frame *frame, const char *base)
{
   char texture[64];
   char texture_size[64];
   char input_size[64];
   char tex_coord[64];

   texture[0] = texture_size[0] = input_size[0] = tex_coord[0] = '\0';

   strlcpy(texture, base, sizeof(texture));
   strlcat(texture, "Texture", sizeof(texture));
   strlcpy(texture_size, base, sizeof(texture_size));
   strlcat(texture_size, "TextureSize", sizeof(texture_size));
   strlcpy(input_size, base, sizeof(input_size));
   strlcat(input_size, "InputSize", sizeof(input_size));
   strlcpy(tex_coord, base, sizeof(tex_coord));
   strlcat(tex_coord, "TexCoord", sizeof(tex_coord));

   if (frame->texture < 0)
      frame->texture = gl_glsl_get_uniform(glsl, prog, texture);
   if (frame->texture_size < 0)
      frame->texture_size = gl_glsl_get_uniform(glsl, prog, texture_size);
   if (frame->input_size < 0)
      frame->input_size = gl_glsl_get_uniform(glsl, prog, input_size);
   if (frame->tex_coord < 0)
      frame->tex_coord = gl_glsl_get_attrib(glsl, prog, tex_coord);
}
