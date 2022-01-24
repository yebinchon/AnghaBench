#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int length; } ;
typedef  TYPE_1__ replace_struct ;
struct TYPE_11__ {int op_mask; int op_match; scalar_t__ name; } ;
typedef  TYPE_2__ opcode_struct ;
typedef  int /*<<< orphan*/  body_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ID_OPHANDLER_CC ; 
 int /*<<< orphan*/  ID_OPHANDLER_NOT_CC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 char*** g_cc_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 

void FUNC6(FILE* filep, body_struct* body, replace_struct* replace, opcode_struct* op_in, int offset)
{
	char repl[20];
	char replnot[20];
	int i;
	int old_length = replace->length;
	opcode_struct* op = FUNC3(sizeof(opcode_struct));

	*op = *op_in;

	op->op_mask |= 0x0f00;

	/* Do all condition codes except t and f */
	for(i=2;i<16;i++)
	{
		/* Add replace strings for this condition code */
		FUNC4(repl, "COND_%s()", g_cc_table[i][1]);
		FUNC4(replnot, "COND_NOT_%s()", g_cc_table[i][1]);

		FUNC0(replace, ID_OPHANDLER_CC, repl);
		FUNC0(replace, ID_OPHANDLER_NOT_CC, replnot);

		/* Set the new opcode info */
		FUNC5(op->name+offset, g_cc_table[i][0]);

		op->op_match = (op->op_match & 0xf0ff) | (i<<8);

		/* Generate all opcode variants for this modified opcode */
		FUNC2(filep, body, replace, op);
		/* Remove the above replace strings */
		replace->length = old_length;
	}
	FUNC1(op);
}