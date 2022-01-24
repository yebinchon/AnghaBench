#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct shader_program_info {int /*<<< orphan*/  fragment; int /*<<< orphan*/  vertex; } ;
struct shader_program_glsl_data {scalar_t__ id; void* fprg; void* vprg; } ;
struct TYPE_4__ {struct shader_program_glsl_data* prg; } ;
typedef  TYPE_1__ glsl_shader_data_t ;
typedef  scalar_t__ GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FRAGMENT_SHADER ; 
 int /*<<< orphan*/  GL_VERTEX_SHADER ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 
 scalar_t__ FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static bool FUNC11(
      void *data,
      unsigned idx,
      void *program_data,
      struct shader_program_info *program_info)
{
   glsl_shader_data_t *glsl = (glsl_shader_data_t*)data;
   struct shader_program_glsl_data *program = (struct shader_program_glsl_data*)program_data;
   GLuint prog = FUNC3();

   if (!program)
      program = &glsl->prg[idx];

   if (!prog)
      goto error;

   if (program_info->vertex)
   {
      FUNC1("[GLSL]: Found GLSL vertex shader.\n");
      program->vprg = FUNC4(GL_VERTEX_SHADER);

      if (!FUNC8(
               glsl,
               program->vprg,
               "#define VERTEX\n#define PARAMETER_UNIFORM\n", program_info->vertex))
      {
         FUNC0("Failed to compile vertex shader #%u\n", idx);
         goto error;
      }

      FUNC2(prog, program->vprg);
   }

   if (program_info->fragment)
   {
      FUNC1("[GLSL]: Found GLSL fragment shader.\n");
      program->fprg = FUNC4(GL_FRAGMENT_SHADER);
      if (!FUNC8(glsl, program->fprg,
               "#define FRAGMENT\n#define PARAMETER_UNIFORM\n", program_info->fragment))
      {
         FUNC0("Failed to compile fragment shader #%u\n", idx);
         goto error;
      }

      FUNC2(prog, program->fprg);
   }

   if (program_info->vertex || program_info->fragment)
   {
      FUNC1("[GLSL]: Linking GLSL program.\n");
      if (!FUNC10(prog))
         goto error;

      /* Clean up dead memory. We're not going to relink the program.
       * Detaching first seems to kill some mobile drivers
       * (according to the intertubes anyways). */
      if (program->vprg)
         FUNC5(program->vprg);
      if (program->fprg)
         FUNC5(program->fprg);
      program->vprg = 0;
      program->fprg = 0;

      FUNC7(prog);
      FUNC6(FUNC9(glsl, prog, "Texture"), 0);
      FUNC7(0);
   }

   program->id = prog;

   return true;

error:
   FUNC0("Failed to link program #%u.\n", idx);
   program->id = 0;
   return false;
}