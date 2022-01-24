#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct shader_uniforms {int /*<<< orphan*/ * prev; int /*<<< orphan*/ * pass; int /*<<< orphan*/  orig; int /*<<< orphan*/  feedback; int /*<<< orphan*/ * lut_texture; void* frame_direction; void* frame_count; void* texture_size; void* output_size; void* input_size; void* lut_tex_coord; void* color; void* vertex_coord; void* tex_coord; void* mvp; } ;
struct TYPE_12__ {TYPE_3__* shader; } ;
typedef  TYPE_4__ glsl_shader_data_t ;
typedef  int /*<<< orphan*/  frame_base ;
struct TYPE_11__ {unsigned int luts; TYPE_2__* pass; TYPE_1__* lut; } ;
struct TYPE_10__ {char* alias; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 unsigned int PREV_TEXTURES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC7(glsl_shader_data_t *glsl,
      unsigned pass, GLuint prog,
      struct shader_uniforms *uni)
{
   unsigned i;
   char frame_base[64];

   frame_base[0] = '\0';

   FUNC1(prog);

   uni->mvp             = FUNC5(glsl, prog, "MVPMatrix");
   uni->tex_coord       = FUNC4(glsl, prog, "TexCoord");
   uni->vertex_coord    = FUNC4(glsl, prog, "VertexCoord");
   uni->color           = FUNC4(glsl, prog, "Color");
   uni->lut_tex_coord   = FUNC4(glsl, prog, "LUTTexCoord");

   uni->input_size      = FUNC5(glsl, prog, "InputSize");
   uni->output_size     = FUNC5(glsl, prog, "OutputSize");
   uni->texture_size    = FUNC5(glsl, prog, "TextureSize");

   uni->frame_count     = FUNC5(glsl, prog, "FrameCount");
   uni->frame_direction = FUNC5(glsl, prog, "FrameDirection");

   for (i = 0; i < glsl->shader->luts; i++)
      uni->lut_texture[i] = FUNC0(prog, glsl->shader->lut[i].id);

   FUNC2(&uni->orig);
   FUNC3(glsl, prog, &uni->orig, "Orig");
   FUNC2(&uni->feedback);
   FUNC3(glsl, prog, &uni->feedback, "Feedback");

   if (pass > 1)
   {
      FUNC6(frame_base, sizeof(frame_base), "PassPrev%u", pass);
      FUNC3(glsl, prog, &uni->orig, frame_base);
   }

   for (i = 0; i + 1 < pass; i++)
   {
      FUNC6(frame_base, sizeof(frame_base), "Pass%u", i + 1);
      FUNC2(&uni->pass[i]);
      FUNC3(glsl, prog, &uni->pass[i], frame_base);
      FUNC6(frame_base, sizeof(frame_base), "PassPrev%u", pass - (i + 1));
      FUNC3(glsl, prog, &uni->pass[i], frame_base);

      if (*glsl->shader->pass[i].alias)
         FUNC3(glsl, prog, &uni->pass[i], glsl->shader->pass[i].alias);
   }

   FUNC2(&uni->prev[0]);
   FUNC3(glsl, prog, &uni->prev[0], "Prev");
   for (i = 1; i < PREV_TEXTURES; i++)
   {
      FUNC6(frame_base, sizeof(frame_base), "Prev%u", i);
      FUNC2(&uni->prev[i]);
      FUNC3(glsl, prog, &uni->prev[i], frame_base);
   }

   FUNC1(0);
}