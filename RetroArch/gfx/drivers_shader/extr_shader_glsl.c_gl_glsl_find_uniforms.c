
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct shader_uniforms {int * prev; int * pass; int orig; int feedback; int * lut_texture; void* frame_direction; void* frame_count; void* texture_size; void* output_size; void* input_size; void* lut_tex_coord; void* color; void* vertex_coord; void* tex_coord; void* mvp; } ;
struct TYPE_12__ {TYPE_3__* shader; } ;
typedef TYPE_4__ glsl_shader_data_t ;
typedef int frame_base ;
struct TYPE_11__ {unsigned int luts; TYPE_2__* pass; TYPE_1__* lut; } ;
struct TYPE_10__ {char* alias; } ;
struct TYPE_9__ {int id; } ;
typedef int GLuint ;


 unsigned int PREV_TEXTURES ;
 int glGetUniformLocation (int ,int ) ;
 int glUseProgram (int ) ;
 int gl_glsl_clear_uniforms_frame (int *) ;
 int gl_glsl_find_uniforms_frame (TYPE_4__*,int ,int *,char*) ;
 void* gl_glsl_get_attrib (TYPE_4__*,int ,char*) ;
 void* gl_glsl_get_uniform (TYPE_4__*,int ,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static void gl_glsl_find_uniforms(glsl_shader_data_t *glsl,
      unsigned pass, GLuint prog,
      struct shader_uniforms *uni)
{
   unsigned i;
   char frame_base[64];

   frame_base[0] = '\0';

   glUseProgram(prog);

   uni->mvp = gl_glsl_get_uniform(glsl, prog, "MVPMatrix");
   uni->tex_coord = gl_glsl_get_attrib(glsl, prog, "TexCoord");
   uni->vertex_coord = gl_glsl_get_attrib(glsl, prog, "VertexCoord");
   uni->color = gl_glsl_get_attrib(glsl, prog, "Color");
   uni->lut_tex_coord = gl_glsl_get_attrib(glsl, prog, "LUTTexCoord");

   uni->input_size = gl_glsl_get_uniform(glsl, prog, "InputSize");
   uni->output_size = gl_glsl_get_uniform(glsl, prog, "OutputSize");
   uni->texture_size = gl_glsl_get_uniform(glsl, prog, "TextureSize");

   uni->frame_count = gl_glsl_get_uniform(glsl, prog, "FrameCount");
   uni->frame_direction = gl_glsl_get_uniform(glsl, prog, "FrameDirection");

   for (i = 0; i < glsl->shader->luts; i++)
      uni->lut_texture[i] = glGetUniformLocation(prog, glsl->shader->lut[i].id);

   gl_glsl_clear_uniforms_frame(&uni->orig);
   gl_glsl_find_uniforms_frame(glsl, prog, &uni->orig, "Orig");
   gl_glsl_clear_uniforms_frame(&uni->feedback);
   gl_glsl_find_uniforms_frame(glsl, prog, &uni->feedback, "Feedback");

   if (pass > 1)
   {
      snprintf(frame_base, sizeof(frame_base), "PassPrev%u", pass);
      gl_glsl_find_uniforms_frame(glsl, prog, &uni->orig, frame_base);
   }

   for (i = 0; i + 1 < pass; i++)
   {
      snprintf(frame_base, sizeof(frame_base), "Pass%u", i + 1);
      gl_glsl_clear_uniforms_frame(&uni->pass[i]);
      gl_glsl_find_uniforms_frame(glsl, prog, &uni->pass[i], frame_base);
      snprintf(frame_base, sizeof(frame_base), "PassPrev%u", pass - (i + 1));
      gl_glsl_find_uniforms_frame(glsl, prog, &uni->pass[i], frame_base);

      if (*glsl->shader->pass[i].alias)
         gl_glsl_find_uniforms_frame(glsl, prog, &uni->pass[i], glsl->shader->pass[i].alias);
   }

   gl_glsl_clear_uniforms_frame(&uni->prev[0]);
   gl_glsl_find_uniforms_frame(glsl, prog, &uni->prev[0], "Prev");
   for (i = 1; i < PREV_TEXTURES; i++)
   {
      snprintf(frame_base, sizeof(frame_base), "Prev%u", i);
      gl_glsl_clear_uniforms_frame(&uni->prev[i]);
      gl_glsl_find_uniforms_frame(glsl, prog, &uni->prev[i], frame_base);
   }

   glUseProgram(0);
}
