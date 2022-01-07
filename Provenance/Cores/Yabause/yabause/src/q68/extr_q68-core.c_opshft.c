
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_6__ {int* D; int SR; } ;
typedef TYPE_1__ Q68State ;


 int BYTE_OFS ;
 scalar_t__ EA_ADDRESS_REG ;
 scalar_t__ EA_MODE (int) ;
 int INSN_CLEAR_CC () ;
 int INSN_GET_COUNT ;
 int INSN_GET_REG ;
 int INSN_GET_REG0 ;
 int INSN_GET_SIZE ;
 int INSN_SETNZ (int) ;

 int SIZE_L ;

 int SR_C ;
 int SR_V ;
 int SR_X ;
 int SR_X_SHIFT ;
 int WORD_OFS ;
 int count ;
 int ea_get (TYPE_1__*,int,int,int,int*) ;
 int ea_set (TYPE_1__*,int,int,int) ;
 int op_ill (TYPE_1__*,int) ;
 size_t reg ;
 size_t reg0 ;
 int size ;

__attribute__((used)) static int opshft(Q68State *state, uint32_t opcode)
{
    const int is_left = opcode & 0x0100;
    INSN_GET_SIZE;
    INSN_GET_COUNT;
    INSN_GET_REG0;
    int is_memory;
    int type;
    uint32_t data;
    int cycles;

    if (size == 3) {

        is_memory = 1;
        if ((opcode & 0x0800) || EA_MODE(opcode) <= EA_ADDRESS_REG) {
            return op_ill(state, opcode);
        }
        size = 128;
        type = opcode>>9 & 3;
        count = 1;
        data = ea_get(state, opcode, size, 1, &cycles);
        if (cycles < 0) {
            return 0;
        }
    } else {

        is_memory = 0;
        type = opcode>>3 & 3;
        if (opcode & 0x0020) {
            INSN_GET_REG;
            count = state->D[reg] & 63;
        }
        data = size==129 ? (uint8_t) state->D[reg0] :
               size==128 ? (uint16_t)state->D[reg0] : state->D[reg0];
        cycles = 0;
    }
    cycles += count*2;

    INSN_CLEAR_CC();
    if (count > 0) {
        const int nbits = (size==129 ? 8 : size==128 ? 16 : 32);
        switch (type) {
          case 0:
            state->SR &= ~SR_X;
            if (is_left) {
                int V = 0, C;

                for (; count > 0; count--) {
                    C = (data >> (nbits-1)) & 1;
                    data <<= 1;
                    V |= (C ^ (data >> (nbits-1))) & 1;
                }
                if (V) {
                    state->SR |= SR_V;
                }
                if (C) {
                    state->SR |= SR_X | SR_C;
                }
            } else {
                if (size == 129) {
                    data = (int8_t)data;
                } else if (size == 128) {
                    data = (int16_t)data;
                }
                if (count > nbits) {
                    count = 32;
                }
                data = (int32_t)data >> (count-1);
                if (data & 1) {
                    state->SR |= SR_X | SR_C;
                }
                data = (int32_t)data >> 1;
            }
            break;
          case 1:
            state->SR &= ~SR_X;
            if (count > nbits) {
                data = 0;
            } else if (is_left) {
                data <<= count-1;
                if ((data >> (nbits-1)) & 1) {
                    state->SR |= SR_X | SR_C;
                }
                data <<= 1;
            } else {
                data = (int32_t)data >> (count-1);
                if (data & 1) {
                    state->SR |= SR_X | SR_C;
                }
                data = (int32_t)data >> 1;
            }
            break;
          case 2: {
            uint32_t X = (state->SR >> SR_X_SHIFT) & 1;
            state->SR &= ~SR_X;
            if (is_left) {
                for (; count > 0; count--) {
                    const int new_X = (data >> (nbits-1)) & 1;
                    data = (data << 1) | X;
                    X = new_X;
                }
            } else {
                for (; count > 0; count--) {
                    const int new_X = data & 1;
                    data = (data >> 1) | (X << (nbits-1));
                    X = new_X;
                }
            }
            if (X) {
                state->SR |= SR_C | SR_X;
            }
            break;
          }
          default: {
            count %= nbits;
            if (is_left) {
                data = (data << count) | (data >> (nbits - count));
                if ((data >> (nbits-1)) & 1) {
                    state->SR |= SR_C;
                }
                data <<= 1;
            } else {
                data = (data >> count) | (data << (nbits - count));
                if (data & 1) {
                    state->SR |= SR_C;
                }
                data = (int32_t)data >> 1;
            }
            break;
          }
        }
    } else {
        if (type == 2 && (state->SR & SR_X)) {
            state->SR |= SR_C;
        }
    }
    INSN_SETNZ(size==129 ? (int8_t) data :
               size==128 ? (int16_t)data : data);

    if (is_memory) {
        ea_set(state, opcode, size, data);
    } else {
        switch (size) {
          case 129: *(BYTE_OFS + (uint8_t *)&state->D[reg0]) = data; break;
          case 128: *(WORD_OFS + (uint16_t *)&state->D[reg0]) = data; break;
          default: state->D[reg0] = data; break;
        }
    }
    return (size==SIZE_L ? 8 : 6) + cycles;
}
