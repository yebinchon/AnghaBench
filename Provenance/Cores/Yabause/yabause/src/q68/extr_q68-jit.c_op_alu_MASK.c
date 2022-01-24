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
 scalar_t__ EA_MISC ; 
 scalar_t__ EA_MISC_IMMEDIATE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  INSN_GET_REG ; 
 int /*<<< orphan*/  INSN_GET_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
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
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int SIZE_B ; 
 int SIZE_L ; 
 int SIZE_W ; 
 int FUNC37 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  current_entry ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int,int,int,int*,int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC40 (int /*<<< orphan*/ *,int) ; 
 int FUNC41 (int /*<<< orphan*/ *,int) ; 
 int FUNC42 (int /*<<< orphan*/ *,int) ; 
 int FUNC43 (int /*<<< orphan*/ *,int) ; 
 int FUNC44 (int /*<<< orphan*/ *,int) ; 
 int reg ; 
 int size ; 

__attribute__((used)) static int FUNC45(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_SIZE;

    /* Pass off special and invalid instructions early */
    if (size != 3) {
        if ((opcode & 0xB130) == 0x9100) {
            /* ADDX/SUBX are coded as ADD/SUB.* Dn,<ea:Rn> */
            return FUNC40(state, opcode);
        }
        if ((opcode & 0xB1F0) == 0x8100) {
            /* ABCD/SBCD are coded as AND/OR.b Dn,<ea:Rn> */
            return FUNC42(state, opcode);
        }
        if ((opcode & 0xF130) == 0xC100) {
            /* EXG is coded as AND.[wl] Dn,<ea:Rn> */
            return FUNC43(state, opcode);
        }
        if ((opcode & 0xF130) == 0x8100) {
            /* OR.[wl] Dn,<ea:Rn> is invalid on the 68000 (later PACK/UNPK) */
            return FUNC44(state, opcode);
        }
        if ((opcode & 0xF138) == 0xB108 && (opcode>>6 & 3) != 3) {
            /* CMPM is coded as EOR.* Dn,<ea:An> */
            return FUNC41(state, opcode);
        }
    }

    int ea_dest = opcode & 0x100;
    int areg_dest = 0;  // For ADDA/SUBA/CMPA
    enum {OR, AND, EOR, CMP, SUB, ADD} aluop;

    /* Find the instruction for the opcode group */
    switch (opcode>>12) {
        case 0x8: aluop = OR;  break;
        case 0x9: aluop = SUB; break;
        case 0xB: aluop = (((opcode>>6)+1) & 7) <= 4 ? CMP : EOR; break;
        case 0xC: aluop = AND; break;
        default:  aluop = ADD; break;  // case 0xD
    }

    /* Handle the special formats of ADDA/SUBA/CMPA */
    if ((aluop == ADD || aluop == SUB || aluop == CMP) && size == 3) {
        size = ea_dest ? SIZE_L : SIZE_W;
        ea_dest = 0;
        areg_dest = 1;
    }

    /* Retrieve the register and EA values; make sure to load operand 1
     * first, since operand 2 may be destroyed by memory operations */
    int cycles;
    if (ea_dest) {
        FUNC13(current_entry, reg*4);
        FUNC38(state, opcode, size, ea_dest, &cycles, 2);
    } else {
        FUNC38(state, opcode, size, ea_dest, &cycles, 1);
        if (areg_dest) {
            FUNC14(current_entry, (8+reg)*4);
        } else {
            FUNC14(current_entry, reg*4);
        }
    }
    if (cycles < 0) {
        return 1;
    }
    if (size == SIZE_L || areg_dest) {
        cycles += 4;
    }
    if (ea_dest) {
        cycles += 4;
    } else if ((aluop == CMP && areg_dest)
               || (size == SIZE_L
                   && (FUNC0(opcode) <= EA_ADDRESS_REG
                       || (FUNC0(opcode) == EA_MISC
                           && FUNC1(opcode) == EA_MISC_IMMEDIATE)))) {
        cycles -= 2;
    }

    /* Perform the actual computation */
    const int do_cc = FUNC37(state, opcode);
    switch (aluop) {
        case OR:  if (size == SIZE_B) {
                      FUNC15(current_entry);
                      if (do_cc) FUNC24(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC17(current_entry);
                      if (do_cc) FUNC26(current_entry);
                  } else {  // size == SIZE_L
                      FUNC16(current_entry);
                      if (do_cc) FUNC25(current_entry);
                  }
                  break;
        case AND: if (size == SIZE_B) {
                      FUNC7(current_entry);
                      if (do_cc) FUNC24(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC9(current_entry);
                      if (do_cc) FUNC26(current_entry);
                  } else {  // size == SIZE_L
                      FUNC8(current_entry);
                      if (do_cc) FUNC25(current_entry);
                  }
                  break;
        case EOR: if (size == SIZE_B) {
                      FUNC10(current_entry);
                      if (do_cc) FUNC24(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC12(current_entry);
                      if (do_cc) FUNC26(current_entry);
                  } else {  // size == SIZE_L
                      FUNC11(current_entry);
                      if (do_cc) FUNC25(current_entry);
                  }
                  break;
        case CMP: if (areg_dest && size == SIZE_W) {
                      FUNC33(current_entry);
                      if (do_cc) FUNC23(current_entry);
                  } else if (size == SIZE_B) {
                      FUNC34(current_entry);
                      if (do_cc) FUNC21(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC36(current_entry);
                      if (do_cc) FUNC23(current_entry);
                  } else {  // size == SIZE_L
                      FUNC35(current_entry);
                      if (do_cc) FUNC22(current_entry);
                  }
                  break;
        case SUB: if (areg_dest && size == SIZE_W) {
                      FUNC33(current_entry);
                  } else if (areg_dest && size == SIZE_L) {
                      FUNC35(current_entry);
                  } else if (size == SIZE_B) {
                      FUNC34(current_entry);
                      if (do_cc) FUNC27(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC36(current_entry);
                      if (do_cc) FUNC29(current_entry);
                  } else {  // size == SIZE_L
                      FUNC35(current_entry);
                      if (do_cc) FUNC28(current_entry);
                  }
                  break;
        default:  // case ADD
                  if (areg_dest && size == SIZE_W) {
                      FUNC2(current_entry);
                  } else if (areg_dest && size == SIZE_L) {
                      FUNC5(current_entry);
                  } else if (size == SIZE_B) {
                      FUNC3(current_entry);
                      if (do_cc) FUNC18(current_entry);
                  } else if (size == SIZE_W) {
                      FUNC6(current_entry);
                      if (do_cc) FUNC20(current_entry);
                  } else {  // size == SIZE_L
                      FUNC5(current_entry);
                      if (do_cc) FUNC19(current_entry);
                  }
                  break;
    }  // switch (aluop)

    /* Store the result in the proper place (if the instruction is not CMP) */
    if (aluop != CMP) {
        if (ea_dest) {
            FUNC39(state, opcode, size);
        } else if (areg_dest) {
            FUNC31(current_entry, (8+reg)*4);
        } else if (size == SIZE_B) {
            FUNC30(current_entry, reg*4);
        } else if (size == SIZE_W) {
            FUNC32(current_entry, reg*4);
        } else {  // size == SIZE_L
            FUNC31(current_entry, reg*4);
        }
    }

    FUNC4(current_entry, 4 + cycles);
    return 0;
}