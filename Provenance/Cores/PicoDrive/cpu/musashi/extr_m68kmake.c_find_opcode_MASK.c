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
struct TYPE_4__ {int size; int /*<<< orphan*/ * spec_ea; int /*<<< orphan*/ * spec_proc; int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ opcode_struct ;

/* Variables and functions */
 TYPE_1__* g_opcode_input_table ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 

opcode_struct* FUNC1(char* name, int size, char* spec_proc, char* spec_ea)
{
	opcode_struct* op;


	for(op = g_opcode_input_table;op->name != NULL;op++)
	{
		if(	FUNC0(name, op->name) == 0 &&
			(size == op->size) &&
			FUNC0(spec_proc, op->spec_proc) == 0 &&
			FUNC0(spec_ea, op->spec_ea) == 0)
				return op;
	}
	return NULL;
}