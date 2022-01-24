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
 int /*<<< orphan*/  ACCESS_MODIFY ; 
 scalar_t__ EA_ADDRESS_REG ; 
 scalar_t__ EA_DATA_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INSN_GET_COND ; 
 int /*<<< orphan*/  SIZE_B ; 
 int /*<<< orphan*/  cond ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(Q68State *state, uint32_t opcode)
{
    if (FUNC0(opcode) == EA_ADDRESS_REG) {
        /* DBcc Dn,disp is coded as Scc An with an extension word */
        return FUNC4(state, opcode);
    }

    INSN_GET_COND;
    const int is_true = FUNC1(cond);
    /* From the cycle counts, it looks like this is a standard read/write
     * access rather than a write-only access */
    int cycles;
    if (FUNC0(opcode) == EA_DATA_REG) {
        cycles = 0;
    } else {
        cycles = FUNC2(state, opcode, SIZE_B, ACCESS_MODIFY);
        if (cycles < 0) {
            return FUNC5(state, opcode);
        }
    }
    FUNC3(state, opcode, SIZE_B, is_true ? 0xFF : 0x00);
    if (FUNC0(opcode) == EA_DATA_REG) {
        /* Scc Dn is a special case */
        return is_true ? 6 : 4;
    } else {
        return 8 + cycles;
    }
}