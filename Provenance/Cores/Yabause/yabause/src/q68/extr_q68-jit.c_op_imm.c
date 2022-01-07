
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Q68State ;


 scalar_t__ EA_DATA_REG ;
 int EA_MISC ;
 int EA_MISC_IMMEDIATE ;
 scalar_t__ EA_MODE (int) ;
 int INSN_GET_SIZE ;
 int JIT_EMIT_ADD_B (int ) ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_ADD_L (int ) ;
 int JIT_EMIT_ADD_W (int ) ;
 int JIT_EMIT_AND_B (int ) ;
 int JIT_EMIT_AND_L (int ) ;
 int JIT_EMIT_AND_W (int ) ;
 int JIT_EMIT_CHECK_SUPER (int ) ;
 int JIT_EMIT_EOR_B (int ) ;
 int JIT_EMIT_EOR_L (int ) ;
 int JIT_EMIT_EOR_W (int ) ;
 int JIT_EMIT_GET_OP2_CCR (int ) ;
 int JIT_EMIT_GET_OP2_SR (int ) ;
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
 int JIT_EMIT_SET_CCR (int ) ;
 int JIT_EMIT_SET_SR (int ) ;
 int JIT_EMIT_SUB_B (int ) ;
 int JIT_EMIT_SUB_L (int ) ;
 int JIT_EMIT_SUB_W (int ) ;

 int SIZE_L ;

 int advance_PC (int *) ;
 int cc_needed (int *,int) ;
 int current_entry ;
 int ea_get (int *,int,int,int,int*,int) ;
 int ea_set (int *,int,int) ;
 int op_bit (int *,int) ;
 int op_ill (int *,int) ;
 int size ;

__attribute__((used)) static int op_imm(Q68State *state, uint32_t opcode)
{

    enum {OR = 0, AND, SUB, ADD, _BIT, EOR, CMP, _ILL} aluop;
    aluop = opcode>>9 & 7;
    if (aluop == _BIT) {
        return op_bit(state, opcode);
    } else if (aluop == _ILL) {
        return op_ill(state, opcode);
    }


    INSN_GET_SIZE;
    if (size == 3) {
        return op_ill(state, opcode);
    }


    int cycles_dummy;
    ea_get(state, EA_MISC<<3 | EA_MISC_IMMEDIATE, size, 0, &cycles_dummy, 1);


    int use_SR;
    int cycles;
    if ((aluop==OR || aluop==AND || aluop==EOR) && (opcode & 0x3F) == 0x3C) {


        use_SR = 1;
        cycles = 8;
        switch (size) {
          case 129:
            JIT_EMIT_GET_OP2_CCR(current_entry);
            break;
          case 128:
            JIT_EMIT_CHECK_SUPER(current_entry);
            JIT_EMIT_GET_OP2_SR(current_entry);
            break;
          default:
            return op_ill(state, opcode);
        }
    } else {
        use_SR = 0;
        ea_get(state, opcode, size, 1, &cycles, 2);
        if (cycles < 0) {
            return 1;
        }
    }


    const int do_cc = cc_needed(state, opcode);


    switch (aluop) {
        case OR: if (size == 129) {
                      JIT_EMIT_OR_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_B(current_entry);
                  } else if (size == 128) {
                      JIT_EMIT_OR_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_W(current_entry);
                  } else {
                      JIT_EMIT_OR_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_L(current_entry);
                  }
                  break;
        case AND: if (size == 129) {
                      JIT_EMIT_AND_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_B(current_entry);
                  } else if (size == 128) {
                      JIT_EMIT_AND_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_W(current_entry);
                  } else {
                      JIT_EMIT_AND_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_L(current_entry);
                  }
                  break;
        case EOR: if (size == 129) {
                      JIT_EMIT_EOR_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_B(current_entry);
                  } else if (size == 128) {
                      JIT_EMIT_EOR_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_W(current_entry);
                  } else {
                      JIT_EMIT_EOR_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_LOGIC_L(current_entry);
                  }
                  break;
        case CMP: if (size == SIZE_L) {
                      if (EA_MODE(opcode) != EA_DATA_REG) {
                          cycles -= 8;
                      } else {
                          cycles -= 2;
                      }
                  } else {
                      if (EA_MODE(opcode) != EA_DATA_REG) {
                          cycles -= 4;
                      }
                  }
                  if (size == 129) {
                      JIT_EMIT_SUB_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_CMP_B(current_entry);
                  } else if (size == 128) {
                      JIT_EMIT_SUB_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_CMP_W(current_entry);
                  } else {
                      JIT_EMIT_SUB_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_CMP_L(current_entry);
                  }
                  break;
        case SUB: if (size == 129) {
                      JIT_EMIT_SUB_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_SUB_B(current_entry);
                  } else if (size == 128) {
                      JIT_EMIT_SUB_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_SUB_W(current_entry);
                  } else {
                      JIT_EMIT_SUB_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_SUB_L(current_entry);
                  }
                  break;
        default:
                  if (size == 129) {
                      JIT_EMIT_ADD_B(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_ADD_B(current_entry);
                  } else if (size == 128) {
                      JIT_EMIT_ADD_W(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_ADD_W(current_entry);
                  } else {
                      JIT_EMIT_ADD_L(current_entry);
                      if (do_cc) JIT_EMIT_SETCC_ADD_L(current_entry);
                  }
                  break;
    }



    cycles += (size==SIZE_L ? 16 : 8);
    cycles += (EA_MODE(opcode) == EA_DATA_REG ? 0 : 4);
    JIT_EMIT_ADD_CYCLES(current_entry, cycles);
    advance_PC(state);


    if (aluop != CMP) {
        if (use_SR) {
            if (size == 129) {
                JIT_EMIT_SET_CCR(current_entry);
            } else {
                JIT_EMIT_SET_SR(current_entry);
            }
        } else {
            ea_set(state, opcode, size);
        }
    }


    return 0;
}
