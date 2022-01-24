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
typedef  int /*<<< orphan*/  Q68State ;

/* Variables and functions */
 int FAULT_STATUS_IN_DATA ; 
 int FAULT_STATUS_RW_READ ; 
 int /*<<< orphan*/  INSN_GET_REG0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current_entry ; 
 int reg0 ; 

__attribute__((used)) static int FUNC6(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG0;
    FUNC2(current_entry, (8+reg0)*4);
    FUNC3(current_entry);
    FUNC5(current_entry, (8+7)*4);
#ifndef Q68_DISABLE_ADDRESS_ERROR
    FUNC1(current_entry, opcode,
                              FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_READ);
#endif
    FUNC4(current_entry);
    FUNC5(current_entry, (8+reg0)*4);
    FUNC0(current_entry, 12);
    return 0;
}