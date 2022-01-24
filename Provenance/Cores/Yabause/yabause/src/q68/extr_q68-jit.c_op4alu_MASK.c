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
 int /*<<< orphan*/  INSN_GET_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
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
 scalar_t__ SIZE_B ; 
 scalar_t__ SIZE_L ; 
 scalar_t__ SIZE_W ; 
 int FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int,scalar_t__,int,int*,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC30 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ size ; 

__attribute__((used)) static int FUNC31(Q68State *state, uint32_t opcode)
{
    INSN_GET_SIZE;
    enum {NEGX = 0, CLR = 1, NEG = 2, NOT = 3, TST = 5} aluop;
    aluop = opcode>>9 & 7;

    if (FUNC0(opcode) == EA_ADDRESS_REG) {  // Address registers not allowed
        return FUNC30(state, opcode);
    }

    /* Retrieve the EA value */
    int cycles;
    FUNC28(state, opcode, size, 1, &cycles, 1);
    if (cycles < 0) {
        return 1;
    }
    if (aluop != TST) {
        if (FUNC0(opcode) == EA_DATA_REG) {
            if (size == SIZE_L) {
                cycles += 2;
            }
        } else {
            cycles += (size == SIZE_L) ? 8 : 4;
        }
    }

    /* Perform the actual computation */
    /* For simplicity, use the 2-argument operations with 0 or ~0 as the
     * second operand:
     *    -n =  0 - n
     *     0 =  0 & n
     *    ~n = ~0 ^ n
     *     n =  0 | n
     */
    FUNC8(current_entry, aluop==NOT ? ~(uint32_t)0 : 0);
    const int do_cc = FUNC27(state, opcode);
    switch (aluop) {
        case NEGX:if (size == SIZE_B) {
                      FUNC21(current_entry);
                      if (do_cc) FUNC15(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC23(current_entry);
                      if (do_cc) FUNC17(current_entry);
                  } else {  // size == SIZE_L
                      FUNC22(current_entry);
                      if (do_cc) FUNC16(current_entry);
                  }
                  break;
        case NEG: if (size == SIZE_B) {
                      FUNC24(current_entry);
                      if (do_cc) FUNC18(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC26(current_entry);
                      if (do_cc) FUNC20(current_entry);
                  } else {  // size == SIZE_L
                      FUNC25(current_entry);
                      if (do_cc) FUNC19(current_entry);
                  }
                  break;
        case CLR: if (size == SIZE_B) {
                      FUNC2(current_entry);
                      if (do_cc) FUNC12(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC4(current_entry);
                      if (do_cc) FUNC14(current_entry);
                  } else {  // size == SIZE_L
                      FUNC3(current_entry);
                      if (do_cc) FUNC13(current_entry);
                  }
                  break;
        case NOT: if (size == SIZE_B) {
                      FUNC5(current_entry);
                      if (do_cc) FUNC12(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC7(current_entry);
                      if (do_cc) FUNC14(current_entry);
                  } else {  // size == SIZE_L
                      FUNC6(current_entry);
                      if (do_cc) FUNC13(current_entry);
                  }
                  break;
        default:  // case TST
                  if (size == SIZE_B) {
                      FUNC9(current_entry);
                      if (do_cc) FUNC12(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC11(current_entry);
                      if (do_cc) FUNC14(current_entry);
                  } else {  // size == SIZE_L
                      FUNC10(current_entry);
                      if (do_cc) FUNC13(current_entry);
                  }
                  break;
    }  // switch (aluop)

    /* Store the result in the proper place (if the instruction is not TST) */
    if (aluop != TST) {
        FUNC29(state, opcode, size);
    }

    FUNC1(current_entry, 4 + cycles);
    return 0;
}