#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * gs_copy_program; int /*<<< orphan*/ * gs_program; int /*<<< orphan*/ * ps_program; int /*<<< orphan*/ * vs_program; } ;
typedef  TYPE_5__ org_programs_t ;
struct TYPE_11__ {int size; int /*<<< orphan*/ * program; } ;
struct TYPE_10__ {int /*<<< orphan*/ * copyProgram; int /*<<< orphan*/ * program; } ;
struct TYPE_9__ {int /*<<< orphan*/ * program; } ;
struct TYPE_8__ {int /*<<< orphan*/ * program; } ;
struct TYPE_13__ {TYPE_4__ fs; TYPE_3__ gs; TYPE_2__ ps; TYPE_1__ vs; } ;
typedef  TYPE_6__ GX2Shader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(GX2Shader *shader)
{
#ifndef GX2_CAN_ACCESS_DATA_SECTION
   FUNC0(shader->vs.program);
   FUNC0(shader->ps.program);
   FUNC0(shader->gs.program);
   FUNC0(shader->gs.copyProgram);

   org_programs_t *org = (org_programs_t *)(shader->fs.program + shader->fs.size);

   shader->vs.program = org->vs_program;
   shader->ps.program = org->ps_program;
   shader->gs.program = org->gs_program;
   shader->gs.copyProgram = org->gs_copy_program;
#endif

   FUNC0(shader->fs.program);
   shader->fs.program = NULL;
}