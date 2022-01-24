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
 scalar_t__ EA_ADDRESS_REG ; 
 scalar_t__ EA_DATA_REG ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIZE_W ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(Q68State *state, uint32_t opcode)
{
    int is_CCR;
    int ea_dest;
    int cycles;
    switch (opcode>>9 & 3) {
      case 0:  // MOVE SR,<ea>
        is_CCR = 0;
        ea_dest = 1;
        cycles = (FUNC0(opcode) == EA_DATA_REG) ? 6 : 8;
        break;
      case 1:  // Undefined (MOVE CCR,<ea> on 68010)
        return FUNC11(state, opcode);
      case 2:  // MOVE <ea>,CCR
        is_CCR = 1;
        ea_dest = 0;
        cycles = 12;
        break;
      default: // MOVE <ea>,SR (case 3)
        FUNC2(current_entry);
        is_CCR = 0;
        ea_dest = 0;
        cycles = 12;
        break;
    }

    if (FUNC0(opcode) == EA_ADDRESS_REG) {  // Address registers not allowed
        return FUNC11(state, opcode);
    }

    /* Motorola docs say the address is read before being written, even
     * for the SR,<ea> format; also, the access size is a word even for
     * CCR operations. */
    int cycles_tmp;
    FUNC9(state, opcode, SIZE_W, ea_dest, &cycles_tmp, 1);
    if (cycles_tmp < 0) {
        return 1;
    }
    cycles += cycles_tmp;

    /* Update the cycle counter (and PC) before writing the result, in case
     * a change to SR triggers an interrupt */
    FUNC1(current_entry, cycles);
    FUNC8(state);

    if (ea_dest) {
        if (is_CCR) {
            FUNC3(current_entry);
        } else {
            FUNC4(current_entry);
        }
        FUNC5(current_entry);
        FUNC10(state, opcode, SIZE_W);
    } else {
        FUNC5(current_entry);
        /* No need to set condition codes--we're about to overwrite them */
        if (is_CCR) {
            FUNC6(current_entry);
        } else {
            FUNC7(current_entry);
        }
    }

    return 0;
}