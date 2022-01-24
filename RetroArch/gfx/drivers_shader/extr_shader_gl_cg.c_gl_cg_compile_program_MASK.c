#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct shader_program_info {int /*<<< orphan*/  combined; scalar_t__ is_file; } ;
struct shader_program_cg {void* vprg; void* fprg; } ;
struct TYPE_2__ {char** alias_define; int /*<<< orphan*/  cgCtx; int /*<<< orphan*/  cgVProf; int /*<<< orphan*/  cgFProf; struct shader_program_cg* prg; } ;
typedef  TYPE_1__ cg_shader_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  CG_SOURCE ; 
 int GFX_MAX_SHADERS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char const*) ; 

__attribute__((used)) static bool FUNC9(
      void *data,
      unsigned idx,
      void *program_data,
      struct shader_program_info *program_info)
{
   const char *argv[2 + GFX_MAX_SHADERS];
   const char *list                  = NULL;
   bool ret                          = true;
   char *listing_f                   = NULL;
   char *listing_v                   = NULL;
   unsigned i, argc                  = 0;
   struct shader_program_cg *program = (struct shader_program_cg*)program_data;
   cg_shader_data_t              *cg = (cg_shader_data_t*)data;

   if (!program)
      program = &cg->prg[idx];

   argv[argc++] = "-DPARAMETER_UNIFORM";

   for (i = 0; i < GFX_MAX_SHADERS; i++)
   {
      if (*(cg->alias_define[i]))
         argv[argc++] = cg->alias_define[i];
   }

   argv[argc] = NULL;

   if (program_info->is_file)
      program->fprg = FUNC2(
            cg->cgCtx, CG_SOURCE,
            program_info->combined, cg->cgFProf, "main_fragment", argv);
   else
      program->fprg = FUNC1(cg->cgCtx, CG_SOURCE,
            program_info->combined, cg->cgFProf, "main_fragment", argv);

   list = FUNC6(cg->cgCtx);

   if (list)
      listing_f = FUNC8(list);

   list = NULL;

   if (program_info->is_file)
      program->vprg = FUNC2(
            cg->cgCtx, CG_SOURCE,
            program_info->combined, cg->cgVProf, "main_vertex", argv);
   else
      program->vprg = FUNC1(cg->cgCtx, CG_SOURCE,
            program_info->combined, cg->cgVProf, "main_vertex", argv);

   list = FUNC6(cg->cgCtx);

   if (list)
      listing_v = FUNC8(list);

   if (!program->fprg || !program->vprg)
   {
      FUNC0("CG error: %s\n", FUNC5(FUNC4()));
      if (listing_f)
         FUNC0("Fragment:\n%s\n", listing_f);
      else if (listing_v)
         FUNC0("Vertex:\n%s\n", listing_v);

      ret = false;
      goto end;
   }

   FUNC3(program->fprg);
   FUNC3(program->vprg);

end:
   FUNC7(listing_f);
   FUNC7(listing_v);
   return ret;
}