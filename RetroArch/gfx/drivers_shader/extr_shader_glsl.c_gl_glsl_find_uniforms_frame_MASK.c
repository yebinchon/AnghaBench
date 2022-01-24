#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  texture_size ;
typedef  int /*<<< orphan*/  texture ;
typedef  int /*<<< orphan*/  tex_coord ;
struct shader_uniforms_frame {int /*<<< orphan*/  tex_coord; void* input_size; void* texture_size; void* texture; } ;
typedef  int /*<<< orphan*/  input_size ;
typedef  int /*<<< orphan*/  glsl_shader_data_t ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC4(glsl_shader_data_t *glsl,
      GLuint prog,
      struct shader_uniforms_frame *frame, const char *base)
{
   char texture[64];
   char texture_size[64];
   char input_size[64];
   char tex_coord[64];

   texture[0] = texture_size[0] = input_size[0] = tex_coord[0] = '\0';

   FUNC3(texture,      base,          sizeof(texture));
   FUNC2(texture,      "Texture",     sizeof(texture));
   FUNC3(texture_size, base,          sizeof(texture_size));
   FUNC2(texture_size, "TextureSize", sizeof(texture_size));
   FUNC3(input_size,   base,          sizeof(input_size));
   FUNC2(input_size,   "InputSize",   sizeof(input_size));
   FUNC3(tex_coord,    base,          sizeof(tex_coord));
   FUNC2(tex_coord,    "TexCoord",    sizeof(tex_coord));

   if (frame->texture < 0)
      frame->texture = FUNC1(glsl, prog, texture);
   if (frame->texture_size < 0)
      frame->texture_size = FUNC1(glsl, prog, texture_size);
   if (frame->input_size < 0)
      frame->input_size = FUNC1(glsl, prog, input_size);
   if (frame->tex_coord < 0)
      frame->tex_coord = FUNC0(glsl, prog, tex_coord);
}