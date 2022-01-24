#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int active_idx; TYPE_1__* prg; } ;
typedef  TYPE_2__ cg_shader_data_t ;
struct TYPE_4__ {scalar_t__ vprg; scalar_t__ fprg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC2(void *data, void *shader_data, unsigned idx, bool set_active)
{
   cg_shader_data_t *cg = (cg_shader_data_t*)shader_data;
   if (cg && cg->prg[idx].vprg && cg->prg[idx].fprg)
   {
      if (set_active)
      {
         FUNC0(cg);
         cg->active_idx = idx;
      }

      FUNC1(cg->prg[idx].fprg, cg->prg[idx].vprg);
   }
}