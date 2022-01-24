#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct video_shader {int passes; TYPE_2__* pass; } ;
struct shader_program_info {char const* combined; int is_file; } ;
struct TYPE_7__ {struct video_shader* shader; int /*<<< orphan*/ * prg; } ;
typedef  TYPE_3__ cg_shader_data_t ;
struct TYPE_5__ {int /*<<< orphan*/  path; } ;
struct TYPE_6__ {TYPE_1__ source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ *,struct shader_program_info*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct video_shader*) ; 

__attribute__((used)) static bool FUNC7(void *data, const char *path)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   if (!FUNC3(cg))
      return false;

   cg->shader = (struct video_shader*)
      FUNC1(1, sizeof(*cg->shader));
   if (!cg->shader)
      return false;

   cg->shader->passes = 1;

   if (FUNC4(path))
   {
      FUNC0("[CG]: Loading stock Cg file.\n");
      cg->prg[1] = cg->prg[0];
   }
   else
   {
      struct shader_program_info program_info;

      program_info.combined = path;
      program_info.is_file  = true;

      FUNC0("[CG]: Loading Cg file: %s\n", path);
      FUNC5(cg->shader->pass[0].source.path, path,
            sizeof(cg->shader->pass[0].source.path));
      if (!FUNC2(data, 1, &cg->prg[1], &program_info))
         return false;
   }

   FUNC6(NULL, cg->shader);
   return true;
}