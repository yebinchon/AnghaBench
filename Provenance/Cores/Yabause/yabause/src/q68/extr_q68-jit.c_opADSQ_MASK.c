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
 scalar_t__ EA_INDIRECT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  INSN_GET_COUNT ; 
 int /*<<< orphan*/  INSN_GET_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int SIZE_B ; 
 int SIZE_L ; 
 int SIZE_W ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  count ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int) ; 
 int size ; 

__attribute__((used)) static int FUNC18(Q68State *state, uint32_t opcode)
{
    const int is_sub = opcode & 0x0100;
    INSN_GET_COUNT;
    INSN_GET_SIZE;
    if (FUNC0(opcode) == EA_ADDRESS_REG && size == 1) {
        size = 2;  // ADDQ.W #imm,An is equivalent to ADDQ.L #imm,An
    }

    FUNC5(current_entry, count);

    int cycles;
    FUNC16(state, opcode, size, 1, &cycles, 2);
    if (cycles < 0) {
        return 1;
    }

    const int do_cc = FUNC15(state, opcode);
    if (is_sub) {
        if (FUNC0(opcode) == EA_ADDRESS_REG) {
            FUNC13(current_entry);
        } else {
            if (size == SIZE_B) {
                FUNC12(current_entry);
                if (do_cc) FUNC9(current_entry);
            } else if (size == SIZE_W) {
                FUNC14(current_entry);
                if (do_cc) FUNC11(current_entry);
            } else {  // size == SIZE_L
                FUNC13(current_entry);
                if (do_cc) FUNC10(current_entry);
            }
        }
    } else {
        if (FUNC0(opcode) == EA_ADDRESS_REG) {
            FUNC3(current_entry);
        } else {
            if (size == SIZE_B) {
                FUNC1(current_entry);
                if (do_cc) FUNC6(current_entry);
            } else if (size == SIZE_W) {
                FUNC4(current_entry);
                if (do_cc) FUNC8(current_entry);
            } else {  // size == SIZE_L
                FUNC3(current_entry);
                if (do_cc) FUNC7(current_entry);
            }
        }
    }

    FUNC17(state, opcode, size);

    cycles += (size==SIZE_L || FUNC0(opcode) == EA_ADDRESS_REG ? 8 : 4);
    cycles += (FUNC0(opcode) >= EA_INDIRECT ? 4 : 0);
    FUNC2(current_entry, cycles);
    return 0;
}