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
typedef  int /*<<< orphan*/  replace_struct ;
typedef  int /*<<< orphan*/  opcode_struct ;
typedef  int /*<<< orphan*/  body_struct ;
struct TYPE_2__ {char* ea_add; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EA_MODE_NONE ; 
 int /*<<< orphan*/  ID_OPHANDLER_EA_AY_16 ; 
 int /*<<< orphan*/  ID_OPHANDLER_EA_AY_32 ; 
 int /*<<< orphan*/  ID_OPHANDLER_EA_AY_8 ; 
 int /*<<< orphan*/  ID_OPHANDLER_OPER_AY_16 ; 
 int /*<<< orphan*/  ID_OPHANDLER_OPER_AY_32 ; 
 int /*<<< orphan*/  ID_OPHANDLER_OPER_AY_8 ; 
 int /*<<< orphan*/  MAX_LINE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* g_ea_info_table ; 
 int /*<<< orphan*/  g_num_functions ; 
 int /*<<< orphan*/  g_prototype_file ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

void FUNC10(FILE* filep, body_struct* body, replace_struct* replace, opcode_struct* opinfo, int ea_mode)
{
	char str[MAX_LINE_LENGTH+1];
	opcode_struct* op = FUNC4(sizeof(opcode_struct));

	/* Set the opcode structure and write the tables, prototypes, etc */
	FUNC5(opinfo, op, ea_mode);
	FUNC3(str, op);
	FUNC9(g_prototype_file, str);
	FUNC0(op, str);
	FUNC8(filep, str);

	/* Add any replace strings needed */
	if(ea_mode != EA_MODE_NONE)
	{
		FUNC6(str, "EA_%s_8()", g_ea_info_table[ea_mode].ea_add);
		FUNC1(replace, ID_OPHANDLER_EA_AY_8, str);
		FUNC6(str, "EA_%s_16()", g_ea_info_table[ea_mode].ea_add);
		FUNC1(replace, ID_OPHANDLER_EA_AY_16, str);
		FUNC6(str, "EA_%s_32()", g_ea_info_table[ea_mode].ea_add);
		FUNC1(replace, ID_OPHANDLER_EA_AY_32, str);
		FUNC6(str, "OPER_%s_8()", g_ea_info_table[ea_mode].ea_add);
		FUNC1(replace, ID_OPHANDLER_OPER_AY_8, str);
		FUNC6(str, "OPER_%s_16()", g_ea_info_table[ea_mode].ea_add);
		FUNC1(replace, ID_OPHANDLER_OPER_AY_16, str);
		FUNC6(str, "OPER_%s_32()", g_ea_info_table[ea_mode].ea_add);
		FUNC1(replace, ID_OPHANDLER_OPER_AY_32, str);
	}

	/* Now write the function body with the selected replace strings */
	FUNC7(filep, body, replace);
	g_num_functions++;
	FUNC2(op);
}