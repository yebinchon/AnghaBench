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
 scalar_t__ EA_DATA_REG ; 
 int EA_MISC ; 
 int EA_MISC_IMMEDIATE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  INSN_GET_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
#define  SIZE_B 129 
 int SIZE_L ; 
#define  SIZE_W 128 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int FUNC35 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC38 (int /*<<< orphan*/ *,int) ; 
 int FUNC39 (int /*<<< orphan*/ *,int) ; 
 int size ; 

__attribute__((used)) static int FUNC40(Q68State *state, uint32_t opcode)
{
    /* Check for bit-twiddling and illegal opcodes first */
    enum {OR = 0, AND, SUB, ADD, _BIT, EOR, CMP, _ILL} aluop;
    aluop = opcode>>9 & 7;
    if (aluop == _BIT) {
        return FUNC38(state, opcode);
    } else if (aluop == _ILL) {
        return FUNC39(state, opcode);
    }

    /* Get the instruction size */
    INSN_GET_SIZE;
    if (size == 3) {
        return FUNC39(state, opcode);
    }

    /* Fetch the immediate value */
    int cycles_dummy;
    FUNC36(state, EA_MISC<<3 | EA_MISC_IMMEDIATE, size, 0, &cycles_dummy, 1);

    /* Fetch the EA operand (which may be SR or CCR) */
    int use_SR;
    int cycles;
    if ((aluop==OR || aluop==AND || aluop==EOR) && (opcode & 0x3F) == 0x3C) {
        /* xxxI #imm,SR (or CCR) use the otherwise-invalid form of an
         * immediate value destination */
        use_SR = 1;
        cycles = 8;  // Total instruction time is 20 cycles
        switch (size) {
          case SIZE_B:
            FUNC12(current_entry);
            break;
          case SIZE_W:
            FUNC8(current_entry);
            FUNC13(current_entry);
            break;
          default:
            return FUNC39(state, opcode);
        }
    } else {
        use_SR = 0;
        FUNC36(state, opcode, size, 1, &cycles, 2);
        if (cycles < 0) {
            return 1;
        }
    }

    /* Check whether we need to output condition codes */
    const int do_cc = FUNC35(state, opcode);

    /* Perform the operation */
    switch (aluop) {
        case OR:  if (size == SIZE_B) {
                      FUNC14(current_entry);
                      if (do_cc) FUNC23(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC16(current_entry);
                      if (do_cc) FUNC25(current_entry);
                  } else {  // size == SIZE_L
                      FUNC15(current_entry);
                      if (do_cc) FUNC24(current_entry);
                  }
                  break;
        case AND: if (size == SIZE_B) {
                      FUNC5(current_entry);
                      if (do_cc) FUNC23(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC7(current_entry);
                      if (do_cc) FUNC25(current_entry);
                  } else {  // size == SIZE_L
                      FUNC6(current_entry);
                      if (do_cc) FUNC24(current_entry);
                  }
                  break;
        case EOR: if (size == SIZE_B) {
                      FUNC9(current_entry);
                      if (do_cc) FUNC23(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC11(current_entry);
                      if (do_cc) FUNC25(current_entry);
                  } else {  // size == SIZE_L
                      FUNC10(current_entry);
                      if (do_cc) FUNC24(current_entry);
                  }
                  break;
        case CMP: if (size == SIZE_L) {  // CMPI takes less time in most cases
                      if (FUNC0(opcode) != EA_DATA_REG) {
                          cycles -= 8;
                      } else {
                          cycles -= 2;
                      }
                  } else {
                      if (FUNC0(opcode) != EA_DATA_REG) {
                          cycles -= 4;
                      }
                  }
                  if (size == SIZE_B) {
                      FUNC31(current_entry);
                      if (do_cc) FUNC20(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC33(current_entry);
                      if (do_cc) FUNC22(current_entry);
                  } else {  // size == SIZE_L
                      FUNC32(current_entry);
                      if (do_cc) FUNC21(current_entry);
                  }
                  break;
        case SUB: if (size == SIZE_B) {
                      FUNC31(current_entry);
                      if (do_cc) FUNC26(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC33(current_entry);
                      if (do_cc) FUNC28(current_entry);
                  } else {  // size == SIZE_L
                      FUNC32(current_entry);
                      if (do_cc) FUNC27(current_entry);
                  }
                  break;
        default:  // case ADD
                  if (size == SIZE_B) {
                      FUNC1(current_entry);
                      if (do_cc) FUNC17(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC4(current_entry);
                      if (do_cc) FUNC19(current_entry);
                  } else {  // size == SIZE_L
                      FUNC3(current_entry);
                      if (do_cc) FUNC18(current_entry);
                  }
                  break;
    }

    /* Update the cycle counter (and PC) before writing the result, in case
     * a change to SR triggers an interrupt */
    cycles += (size==SIZE_L ? 16 : 8);
    cycles += (FUNC0(opcode) == EA_DATA_REG ? 0 : 4);
    FUNC2(current_entry, cycles);
    FUNC34(state);

    /* Update the EA operand (if not CMPI) */
    if (aluop != CMP) {
        if (use_SR) {
            if (size == SIZE_B) {
                FUNC29(current_entry);
            } else {
                FUNC30(current_entry);
            }
        } else {
            FUNC37(state, opcode, size);
        }
    }

    /* All done */
    return 0;
}