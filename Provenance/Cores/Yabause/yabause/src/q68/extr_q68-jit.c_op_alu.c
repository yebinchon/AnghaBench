
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_MISC ;
 scalar_t__ EA_MISC_IMMEDIATE ;
 scalar_t__ EA_MODE (int) ;
 scalar_t__ EA_REG (int) ;
 int INSN_GET_REG ;
 int INSN_GET_SIZE ;
 int JIT_EMIT_ADDA_W (int ) ;
 int JIT_EMIT_ADD_B (int ) ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_ADD_L (int ) ;
 int JIT_EMIT_ADD_W (int ) ;
 int JIT_EMIT_AND_B (int ) ;
 int JIT_EMIT_AND_L (int ) ;
 int JIT_EMIT_AND_W (int ) ;
 int JIT_EMIT_EOR_B (int ) ;
 int JIT_EMIT_EOR_L (int ) ;
 int JIT_EMIT_EOR_W (int ) ;
 int JIT_EMIT_GET_OP1_REGISTER (int ,int) ;
 int JIT_EMIT_GET_OP2_REGISTER (int ,int) ;
 int JIT_EMIT_OR_B (int ) ;
 int JIT_EMIT_OR_L (int ) ;
 int JIT_EMIT_OR_W (int ) ;
 int JIT_EMIT_SETCC_ADD_B (int ) ;
 int JIT_EMIT_SETCC_ADD_L (int ) ;
 int JIT_EMIT_SETCC_ADD_W (int ) ;
 int JIT_EMIT_SETCC_CMP_B (int ) ;
 int JIT_EMIT_SETCC_CMP_L (int ) ;
 int JIT_EMIT_SETCC_CMP_W (int ) ;
 int JIT_EMIT_SETCC_LOGIC_B (int ) ;
 int JIT_EMIT_SETCC_LOGIC_L (int ) ;
 int JIT_EMIT_SETCC_LOGIC_W (int ) ;
 int JIT_EMIT_SETCC_SUB_B (int ) ;
 int JIT_EMIT_SETCC_SUB_L (int ) ;
 int JIT_EMIT_SETCC_SUB_W (int ) ;
 int JIT_EMIT_SET_REGISTER_B (int ,int) ;
 int JIT_EMIT_SET_REGISTER_L (int ,int) ;
 int JIT_EMIT_SET_REGISTER_W (int ,int) ;
 int JIT_EMIT_SUBA_W (int ) ;
 int JIT_EMIT_SUB_B (int ) ;
 int JIT_EMIT_SUB_L (int ) ;
 int JIT_EMIT_SUB_W (int ) ;
 int SIZE_B ;
 int SIZE_L ;
 int SIZE_W ;
 int cc_needed (int *,int) ;
 int current_entry ;
 int ea_get (int *,int,int,int,int*,int) ;
 int ea_set (int *,int,int) ;
 int opADSX (int *,int) ;
 int opCMPM (int *,int) ;
 int op_BCD (int *,int) ;
 int op_EXG (int *,int) ;
 int op_ill (int *,int) ;
 int reg ;
 int size ;

__attribute__((used)) static int op_alu(Q68State *state, uint32_t opcode)
{
    INSN_GET_REG;
    INSN_GET_SIZE;


    if (size != 3) {
        if ((opcode & 0xB130) == 0x9100) {

            return opADSX(state, opcode);
        }
        if ((opcode & 0xB1F0) == 0x8100) {

            return op_BCD(state, opcode);
        }
        if ((opcode & 0xF130) == 0xC100) {

            return op_EXG(state, opcode);
        }
        if ((opcode & 0xF130) == 0x8100) {

            return op_ill(state, opcode);
        }
        if ((opcode & 0xF138) == 0xB108 && (opcode>>6 & 3) != 3) {

            return opCMPM(state, opcode);
        }
    }

    int ea_dest = opcode & 0x100;
    int areg_dest = 0;
    enum {OR, AND, EOR, CMP, SUB, ADD} aluop;


    switch (opcode>>12) {
        case 0x8: aluop = OR; break;
        case 0x9: aluop = SUB; break;
        case 0xB: aluop = (((opcode>>6)+1) & 7) <= 4 ? CMP : EOR; break;
        case 0xC: aluop = AND; break;
        default: aluop = ADD; break;
    }


    if ((aluop == ADD || aluop == SUB || aluop == CMP) && size == 3) {
        size = ea_dest ? SIZE_L : SIZE_W;
        ea_dest = 0;
        areg_dest = 1;
    }



    int cycles;
    if (ea_dest) {
        JIT_EMIT_GET_OP1_REGISTER(current_entry, reg*4);
        ea_get(state, opcode, size, ea_dest, &cycles, 2);
    } else {
        ea_get(state, opcode, size, ea_dest, &cycles, 1);
        if (areg_dest) {
            JIT_EMIT_GET_OP2_REGISTER(current_entry, (8+reg)*4);
        } else {
            JIT_EMIT_GET_OP2_REGISTER(current_entry, reg*4);
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
                   && (EA_MODE(opcode) <= EA_ADDRESS_REG
                       || (EA_MODE(opcode) == EA_MISC
                           && EA_REG(opcode) == EA_MISC_IMMEDIATE)))) {
        cycles -= 2;
    }


    const int do_cc = cc_needed(state, opcode);
    switch (aluop) {
        case OR: if (size == SIZE_B) {
                      JIT_EMIT_OR_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_B(current_entry);
                  } else if (size == SIZE_W) {
                      JIT_EMIT_OR_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_W(current_entry);
                  } else {
                      JIT_EMIT_OR_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_L(current_entry);
                  }
                  break;
        case AND: if (size == SIZE_B) {
                      JIT_EMIT_AND_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_B(current_entry);
                  } else if (size == SIZE_W) {
                      JIT_EMIT_AND_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_W(current_entry);
                  } else {
                      JIT_EMIT_AND_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_L(current_entry);
                  }
                  break;
        case EOR: if (size == SIZE_B) {
                      JIT_EMIT_EOR_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_B(current_entry);
                  } else if (size == SIZE_W) {
                      JIT_EMIT_EOR_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_W(current_entry);
                  } else {
                      JIT_EMIT_EOR_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_L(current_entry);
                  }
                  break;
        case CMP: if (areg_dest && size == SIZE_W) {
                      JIT_EMIT_SUBA_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_CMP_W(current_entry);
                  } else if (size == SIZE_B) {
                      JIT_EMIT_SUB_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_CMP_B(current_entry);
                  } else if (size == SIZE_W) {
                      JIT_EMIT_SUB_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_CMP_W(current_entry);
                  } else {
                      JIT_EMIT_SUB_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_CMP_L(current_entry);
                  }
                  break;
        case SUB: if (areg_dest && size == SIZE_W) {
                      JIT_EMIT_SUBA_W(current_entry);
                  } else if (areg_dest && size == SIZE_L) {
                      JIT_EMIT_SUB_L(current_entry);
                  } else if (size == SIZE_B) {
                      JIT_EMIT_SUB_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_SUB_B(current_entry);
                  } else if (size == SIZE_W) {
                      JIT_EMIT_SUB_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_SUB_W(current_entry);
                  } else {
                      JIT_EMIT_SUB_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_SUB_L(current_entry);
                  }
                  break;
        default:
                  if (areg_dest && size == SIZE_W) {
                      JIT_EMIT_ADDA_W(current_entry);
                  } else if (areg_dest && size == SIZE_L) {
                      JIT_EMIT_ADD_L(current_entry);
                  } else if (size == SIZE_B) {
                      JIT_EMIT_ADD_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_ADD_B(current_entry);
                  } else if (size == SIZE_W) {
                      JIT_EMIT_ADD_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_ADD_W(current_entry);
                  } else {
                      JIT_EMIT_ADD_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_ADD_L(current_entry);
                  }
                  break;
    }


    if (aluop != CMP) {
        if (ea_dest) {
            ea_set(state, opcode, size);
        } else if (areg_dest) {
            JIT_EMIT_SET_REGISTER_L(current_entry, (8+reg)*4);
        } else if (size == SIZE_B) {
            JIT_EMIT_SET_REGISTER_B(current_entry, reg*4);
        } else if (size == SIZE_W) {
            JIT_EMIT_SET_REGISTER_W(current_entry, reg*4);
        } else {
            JIT_EMIT_SET_REGISTER_L(current_entry, reg*4);
        }
    }

    JIT_EMIT_ADD_CYCLES(current_entry, 4 + cycles);
    return 0;
}
