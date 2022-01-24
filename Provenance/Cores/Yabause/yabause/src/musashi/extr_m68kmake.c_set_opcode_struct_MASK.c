#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  op_match; int /*<<< orphan*/  op_mask; int /*<<< orphan*/  spec_ea; int /*<<< orphan*/ * cycles; } ;
typedef  TYPE_1__ opcode_struct ;
struct TYPE_7__ {char* fname_add; int /*<<< orphan*/  match_add; int /*<<< orphan*/  mask_add; } ;

/* Variables and functions */
 int EA_MODE_NONE ; 
 int NUM_CPUS ; 
 int /*<<< orphan*/  UNSPECIFIED ; 
 TYPE_5__* g_ea_info_table ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(opcode_struct* src, opcode_struct* dst, int ea_mode)
{
	int i;

	*dst = *src;

	for(i=0;i<NUM_CPUS;i++)
		dst->cycles[i] = FUNC0(dst, ea_mode, i);
	if(FUNC2(dst->spec_ea, UNSPECIFIED) == 0 && ea_mode != EA_MODE_NONE)
		FUNC1(dst->spec_ea, "%s", g_ea_info_table[ea_mode].fname_add);
	dst->op_mask |= g_ea_info_table[ea_mode].mask_add;
	dst->op_match |= g_ea_info_table[ea_mode].match_add;
}