#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  Q68State ;

/* Variables and functions */
 int FAULT_STATUS_IN_DATA ; 
 int FAULT_STATUS_RW_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INSN_GET_REG0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current_entry ; 
 int reg0 ; 

__attribute__((used)) static int FUNC9(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG0;
    int16_t disp = FUNC0(state);
#ifndef Q68_DISABLE_ADDRESS_ERROR
    FUNC3(current_entry, opcode,
                              FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE);
#endif
    FUNC4(current_entry, (8+reg0)*4);
    FUNC7(current_entry);
    FUNC4(current_entry, (8+7)*4);
    FUNC6(current_entry);
    FUNC8(current_entry, (8+reg0)*4);
    FUNC5(current_entry, disp);
    FUNC2(current_entry);
    FUNC8(current_entry, (8+7)*4);
    FUNC1(current_entry, 16);
    return 0;
}