#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int length; } ;
typedef  TYPE_1__ replace_struct ;
struct TYPE_8__ {int size; int /*<<< orphan*/  ea_allowed; } ;
typedef  TYPE_2__ opcode_struct ;
typedef  int /*<<< orphan*/  body_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EA_MODE_AI ; 
 int /*<<< orphan*/  EA_MODE_AL ; 
 int /*<<< orphan*/  EA_MODE_AW ; 
 int /*<<< orphan*/  EA_MODE_DI ; 
 int /*<<< orphan*/  EA_MODE_I ; 
 int /*<<< orphan*/  EA_MODE_IX ; 
 int /*<<< orphan*/  EA_MODE_NONE ; 
 int /*<<< orphan*/  EA_MODE_PCDI ; 
 int /*<<< orphan*/  EA_MODE_PCIX ; 
 int /*<<< orphan*/  EA_MODE_PD ; 
 int /*<<< orphan*/  EA_MODE_PD7 ; 
 int /*<<< orphan*/  EA_MODE_PI ; 
 int /*<<< orphan*/  EA_MODE_PI7 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

void FUNC12(FILE* filep, body_struct* body, replace_struct* replace, opcode_struct* op)
{
	int old_length = replace->length;

	/* No ea modes available for this opcode */
	if(FUNC10(op->ea_allowed))
	{
		FUNC11(filep, body, replace, op, EA_MODE_NONE);
		return;
	}

	/* Check for and create specific opcodes for each available addressing mode */
	if(FUNC0(op->ea_allowed))
		FUNC11(filep, body, replace, op, EA_MODE_AI);
	replace->length = old_length;
	if(FUNC9(op->ea_allowed))
	{
		FUNC11(filep, body, replace, op, EA_MODE_PI);
		replace->length = old_length;
		if(op->size == 8)
			FUNC11(filep, body, replace, op, EA_MODE_PI7);
	}
	replace->length = old_length;
	if(FUNC8(op->ea_allowed))
	{
		FUNC11(filep, body, replace, op, EA_MODE_PD);
		replace->length = old_length;
		if(op->size == 8)
			FUNC11(filep, body, replace, op, EA_MODE_PD7);
	}
	replace->length = old_length;
	if(FUNC3(op->ea_allowed))
		FUNC11(filep, body, replace, op, EA_MODE_DI);
	replace->length = old_length;
	if(FUNC5(op->ea_allowed))
		FUNC11(filep, body, replace, op, EA_MODE_IX);
	replace->length = old_length;
	if(FUNC2(op->ea_allowed))
		FUNC11(filep, body, replace, op, EA_MODE_AW);
	replace->length = old_length;
	if(FUNC1(op->ea_allowed))
		FUNC11(filep, body, replace, op, EA_MODE_AL);
	replace->length = old_length;
	if(FUNC6(op->ea_allowed))
		FUNC11(filep, body, replace, op, EA_MODE_PCDI);
	replace->length = old_length;
	if(FUNC7(op->ea_allowed))
		FUNC11(filep, body, replace, op, EA_MODE_PCIX);
	replace->length = old_length;
	if(FUNC4(op->ea_allowed))
		FUNC11(filep, body, replace, op, EA_MODE_I);
	replace->length = old_length;
}