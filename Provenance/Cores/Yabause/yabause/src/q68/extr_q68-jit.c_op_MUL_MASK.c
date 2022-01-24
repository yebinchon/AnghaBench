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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  Q68State ;

/* Variables and functions */
 int /*<<< orphan*/  INSN_GET_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SIZE_W ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int reg ; 

__attribute__((used)) static int FUNC8(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    const int sign = opcode & (1<<8);

    int cycles;
    FUNC7(state, opcode, SIZE_W, 0, &cycles, 1);
    if (cycles < 0) {
        return 1;
    }
    FUNC1(current_entry, reg*4);

    const int do_cc = FUNC6(state, opcode);
    if (sign) {
        FUNC2(current_entry);
    } else {
        FUNC3(current_entry);
    }
    /* 16*16 -> 32 multiplication can't produce carry or overflow, so we
     * can treat it like a logical operation for setting condition codes */
    if (do_cc) FUNC4(current_entry);
    FUNC5(current_entry, reg*4);

    FUNC0(current_entry, 54 + cycles);
    return 0;
}