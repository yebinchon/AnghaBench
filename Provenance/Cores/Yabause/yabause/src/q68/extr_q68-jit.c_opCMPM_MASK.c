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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  Q68State ;

/* Variables and functions */
 int EA_POSTINCREMENT ; 
 int /*<<< orphan*/  INSN_GET_REG ; 
 int /*<<< orphan*/  INSN_GET_REG0 ; 
 int /*<<< orphan*/  INSN_GET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIZE_B ; 
 scalar_t__ SIZE_L ; 
 scalar_t__ SIZE_W ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int const,scalar_t__,int /*<<< orphan*/ ,int*,int) ; 
 int reg ; 
 int reg0 ; 
 scalar_t__ size ; 

__attribute__((used)) static int FUNC9(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_SIZE;
    INSN_GET_REG0;

    const uint16_t src_ea  = EA_POSTINCREMENT<<3 | reg0;
    const uint16_t dest_ea = EA_POSTINCREMENT<<3 | reg;
    int dummy;
    FUNC8(state, src_ea,  size, 0, &dummy, 1);
    FUNC8(state, dest_ea, size, 0, &dummy, 2);

    const int do_cc = FUNC7(state, opcode);  // Just for consistency
    if (size == SIZE_B) {
        FUNC4(current_entry);
        if (do_cc) FUNC1(current_entry);
    } else if (size == SIZE_W) {
        FUNC6(current_entry);
        if (do_cc) FUNC3(current_entry);
    } else {  // size == SIZE_L
        FUNC5(current_entry);
        if (do_cc) FUNC2(current_entry);
    }

    FUNC0(current_entry, SIZE_L ? 20 : 12);
    return 0;
}