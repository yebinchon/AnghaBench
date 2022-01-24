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
 int /*<<< orphan*/  ACCESS_WRITE ; 
 scalar_t__ EA_ADDRESS_REG ; 
 scalar_t__ FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int const SIZE_B ; 
 int const SIZE_L ; 
 int const SIZE_W ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int const,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int const,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int const,int const) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC14(Q68State *state, uint32_t opcode)
{
    const int size = (opcode>>12==1 ? SIZE_B : opcode>>12==2 ? SIZE_L : SIZE_W);

    int cycles_src;
    FUNC10(state, opcode, size, 0, &cycles_src, 1);
    if (cycles_src < 0) {
        return 1;
    }

    /* Rearrange the opcode bits so we can pass the destination EA to
     * ea_resolve() */
    const uint32_t dummy_opcode = (opcode>>9 & 7) | (opcode>>3 & 0x38);
    int cycles_dest;
    if (FUNC0(dummy_opcode) <= EA_ADDRESS_REG) {
        cycles_dest = 0;
    } else {
        cycles_dest = FUNC11(state, dummy_opcode, size, ACCESS_WRITE);
        if (cycles_dest < 0) {
            return FUNC13(state, opcode);
        }
    }

    /* Copy the operand to the result and set flags (if needed) */
    const int do_cc = FUNC9(state, opcode);
    if (FUNC0(dummy_opcode) == EA_ADDRESS_REG) {
        if (size == SIZE_W) {
            FUNC2(current_entry);
        } else {  // size == SIZE_L
            FUNC4(current_entry);
        }
    } else {
        if (size == SIZE_B) {
            FUNC3(current_entry);
            if (do_cc) FUNC6(current_entry);
        } else if (size == SIZE_W) {
            FUNC5(current_entry);
            if (do_cc) FUNC8(current_entry);
        } else {  // size == SIZE_L
            FUNC4(current_entry);
            if (do_cc) FUNC7(current_entry);
        }
    }

    /* Update the destination EA and cycle count */
    FUNC12(state, dummy_opcode, size);
    FUNC1(current_entry, 4 + cycles_src + cycles_dest);

    return 0;
}