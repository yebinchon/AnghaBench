#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* prg; int /*<<< orphan*/  cgVProf; int /*<<< orphan*/  cgFProf; } ;
typedef  TYPE_1__ cg_shader_data_t ;
struct TYPE_4__ {scalar_t__ fprg; scalar_t__ vprg; } ;

/* Variables and functions */
 unsigned int GFX_MAX_SHADERS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(void *data)
{
   unsigned i;
   cg_shader_data_t *cg = (cg_shader_data_t*)data;

   if (!cg)
      return;

   FUNC0("[CG]: Destroying programs.\n");
   FUNC2(cg->cgFProf);
   FUNC2(cg->cgVProf);

   /* Programs may alias [0]. */
   for (i = 1; i < GFX_MAX_SHADERS; i++)
   {
      if (cg->prg[i].fprg && cg->prg[i].fprg != cg->prg[0].fprg)
         FUNC1(cg->prg[i].fprg);
      if (cg->prg[i].vprg && cg->prg[i].vprg != cg->prg[0].vprg)
         FUNC1(cg->prg[i].vprg);
   }

   if (cg->prg[0].fprg)
      FUNC1(cg->prg[0].fprg);
   if (cg->prg[0].vprg)
      FUNC1(cg->prg[0].vprg);

   FUNC3(cg->prg, 0, sizeof(cg->prg));
}