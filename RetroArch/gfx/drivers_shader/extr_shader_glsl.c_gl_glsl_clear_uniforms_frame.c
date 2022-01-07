
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_uniforms_frame {int texture; int texture_size; int input_size; int tex_coord; } ;



__attribute__((used)) static void gl_glsl_clear_uniforms_frame(struct shader_uniforms_frame *frame)
{
   frame->texture = -1;
   frame->texture_size = -1;
   frame->input_size = -1;
   frame->tex_coord = -1;
}
