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
struct TYPE_4__ {int /*<<< orphan*/  op_mask; int /*<<< orphan*/  bits; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ opcode_struct ;

/* Variables and functions */
 scalar_t__ MAX_OPCODE_OUTPUT_TABLE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* g_opcode_output_table ; 
 scalar_t__ g_opcode_output_table_length ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(opcode_struct* op, char* name)
{
	opcode_struct* ptr;
	if(g_opcode_output_table_length > MAX_OPCODE_OUTPUT_TABLE_LENGTH)
		FUNC0("Opcode output table overflow");

	ptr = g_opcode_output_table + g_opcode_output_table_length++;

	*ptr = *op;
	FUNC2(ptr->name, name);
	ptr->bits = FUNC1(ptr->op_mask);
}