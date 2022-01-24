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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  INSN_GET_COUNT ; 
 int /*<<< orphan*/  INSN_GET_REG ; 
 int /*<<< orphan*/  INSN_GET_REG0 ; 
 int /*<<< orphan*/  INSN_GET_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int) ; 
 int SIZE_B ; 
 int SIZE_L ; 
 int SIZE_W ; 
 int count ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC34 (int /*<<< orphan*/ *,int) ; 
 int reg ; 
 int reg0 ; 
 int size ; 

__attribute__((used)) static int FUNC35(Q68State *state, uint32_t opcode)
{
    const int is_left = opcode & 0x0100;
    INSN_GET_SIZE;
    INSN_GET_COUNT;
    INSN_GET_REG0;
    int is_memory;
    int type;  // Shift/rotate type (0=ASL/ASR, 1=LSL/LSR, ...)
    int cycles;

    if (size == 3) {
        /* Memory shift/rotate */
        is_memory = 1;
        if ((opcode & 0x0800) || FUNC0(opcode) <= EA_ADDRESS_REG) {
            return FUNC34(state, opcode);
        }
        size = SIZE_W;
        type = opcode>>9 & 3;
        FUNC8(current_entry, 1);
        FUNC32(state, opcode, size, 1, &cycles, 2);
        if (cycles < 0) {
            return 1;
        }
    } else {
        /* Register shift/rotate */
        is_memory = 0;
        type = opcode>>3 & 3;
        if (opcode & 0x0020) {
            INSN_GET_REG;
            FUNC9(current_entry, reg*4);
        } else {
            FUNC8(current_entry, count);
        }
        FUNC10(current_entry, reg0*4);
        cycles = 0;
    }

    switch (type) {
      case 0:  // ASL/ASR
        if (is_left) {
            if (size == SIZE_B) {
                FUNC2(current_entry);
            } else if (size == SIZE_W) {
                FUNC4(current_entry);
            } else {  // size == SIZE_L
                FUNC3(current_entry);
            }
        } else {
            if (size == SIZE_B) {
                FUNC5(current_entry);
            } else if (size == SIZE_W) {
                FUNC7(current_entry);
            } else {  // size == SIZE_L
                FUNC6(current_entry);
            }
        }
        break;
      case 1:  // LSL/LSR
        if (is_left) {
            if (size == SIZE_B) {
                FUNC11(current_entry);
            } else if (size == SIZE_W) {
                FUNC13(current_entry);
            } else {  // size == SIZE_L
                FUNC12(current_entry);
            }
        } else {
            if (size == SIZE_B) {
                FUNC14(current_entry);
            } else if (size == SIZE_W) {
                FUNC16(current_entry);
            } else {  // size == SIZE_L
                FUNC15(current_entry);
            }
        }
        break;
      case 2:  // ROXL/ROXR
        if (is_left) {
            if (size == SIZE_B) {
                FUNC23(current_entry);
            } else if (size == SIZE_W) {
                FUNC25(current_entry);
            } else {  // size == SIZE_L
                FUNC24(current_entry);
            }
        } else {
            if (size == SIZE_B) {
                FUNC26(current_entry);
            } else if (size == SIZE_W) {
                FUNC28(current_entry);
            } else {  // size == SIZE_L
                FUNC27(current_entry);
            }
        }
        break;
      case 3:  // ROL/ROR
        if (is_left) {
            if (size == SIZE_B) {
                FUNC17(current_entry);
            } else if (size == SIZE_W) {
                FUNC19(current_entry);
            } else {  // size == SIZE_L
                FUNC18(current_entry);
            }
        } else {
            if (size == SIZE_B) {
                FUNC20(current_entry);
            } else if (size == SIZE_W) {
                FUNC22(current_entry);
            } else {  // size == SIZE_L
                FUNC21(current_entry);
            }
        }
        break;
    }  // switch (type)

    if (is_memory) {
        FUNC33(state, opcode, size);
    } else if (size == SIZE_B) {
        FUNC29(current_entry, reg0*4);
    } else if (size == SIZE_W) {
        FUNC31(current_entry, reg0*4);
    } else {  // size == SIZE_L
        FUNC30(current_entry, reg0*4);
    }

    /* Cycles based on count are added in the shift/rotate processing */
    FUNC1(current_entry, (size==SIZE_L ? 8 : 6) + cycles);
    return 0;
}