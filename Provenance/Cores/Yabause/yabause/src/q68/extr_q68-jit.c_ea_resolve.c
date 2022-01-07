
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_4__ {int current_PC; } ;
typedef TYPE_1__ Q68State ;


 int ACCESS_READ ;
 int ACCESS_WRITE ;







 unsigned int EA_MODE (int) ;


 unsigned int EA_REG (int) ;
 int IFETCH (TYPE_1__*) ;
 int JIT_EMIT_RESOLVE_ABSOLUTE (int ,int) ;
 int JIT_EMIT_RESOLVE_ABS_INDEX_L (int ,int const,unsigned int const) ;
 int JIT_EMIT_RESOLVE_ABS_INDEX_W (int ,int const,unsigned int const) ;
 int JIT_EMIT_RESOLVE_DISP (int ,int,int) ;
 int JIT_EMIT_RESOLVE_INDEX_L (int ,int,unsigned int const,int const) ;
 int JIT_EMIT_RESOLVE_INDEX_W (int ,int,unsigned int const,int const) ;
 int JIT_EMIT_RESOLVE_INDIRECT (int ,int) ;
 int JIT_EMIT_RESOLVE_POSTINC (int ,int,unsigned int const) ;
 int JIT_EMIT_RESOLVE_POSTINC_A7_B (int ) ;
 int JIT_EMIT_RESOLVE_PREDEC (int ,int,unsigned int const) ;
 int JIT_EMIT_RESOLVE_PREDEC_A7_B (int ) ;
 int SIZE_L ;
 unsigned int SIZE_TO_BYTES (int) ;
 int current_entry ;

__attribute__((used)) static int ea_resolve(Q68State *state, uint32_t opcode, int size,
                      int access_type)
{
    const unsigned int mode = EA_MODE(opcode);
    const unsigned int reg = EA_REG(opcode);
    const unsigned int bytes = SIZE_TO_BYTES(size);

    static const int base_cycles[8] = {0, 0, 4, 4, 6, 8, 10, 0};
    int cycles = base_cycles[mode] + (size==SIZE_L ? 4 : 0);

    switch (mode) {
      case 134:
        JIT_EMIT_RESOLVE_INDIRECT(current_entry, (8+reg)*4);
        break;
      case 129:
        if (bytes == 1 && reg == 7) {
            JIT_EMIT_RESOLVE_POSTINC_A7_B(current_entry);
        } else {
            JIT_EMIT_RESOLVE_POSTINC(current_entry, (8+reg)*4, bytes);
        }
        break;
      case 128:
        if (access_type == ACCESS_WRITE) {


            cycles -= 2;
        }
        if (bytes == 1 && reg == 7) {
            JIT_EMIT_RESOLVE_PREDEC_A7_B(current_entry);
        } else {
            JIT_EMIT_RESOLVE_PREDEC(current_entry, (8+reg)*4, bytes);
        }
        break;
      case 136:
        JIT_EMIT_RESOLVE_DISP(current_entry, (8+reg)*4, (int16_t)IFETCH(state));
        break;
      case 135: {
        const uint16_t ext = IFETCH(state);
        const unsigned int ireg = ext >> 12;
        const int8_t disp = (int8_t)ext;
        if (ext & 0x0800) {
            JIT_EMIT_RESOLVE_INDEX_L(current_entry, (8+reg)*4, ireg*4, disp);
        } else {
            JIT_EMIT_RESOLVE_INDEX_W(current_entry, (8+reg)*4, ireg*4, disp);
        }
        break;
      }
      default:
        switch (reg) {
          case 132:
            cycles += 8;
            JIT_EMIT_RESOLVE_ABSOLUTE(current_entry, (int16_t)IFETCH(state));
            break;
          case 133: {
            cycles += 12;
            uint32_t addr = IFETCH(state) << 16;
            addr |= (uint16_t)IFETCH(state);
            JIT_EMIT_RESOLVE_ABSOLUTE(current_entry, addr);
            break;
          }
          case 131:
            if (access_type != ACCESS_READ) {
                return -1;
            } else {
                cycles += 8;
                JIT_EMIT_RESOLVE_ABSOLUTE(
                    current_entry, state->current_PC + (int16_t)IFETCH(state)
                );
            }
            break;
          case 130:
            if (access_type != ACCESS_READ) {
                return -1;
            } else {
                cycles += 10;
                const uint16_t ext = IFETCH(state);
                const unsigned int ireg = ext >> 12;
                const int32_t disp = (int32_t)((int8_t)ext);
                if (ext & 0x0800) {
                    JIT_EMIT_RESOLVE_ABS_INDEX_L(
                        current_entry, state->current_PC + disp, ireg*4
                    );
                } else {
                    JIT_EMIT_RESOLVE_ABS_INDEX_W(
                        current_entry, state->current_PC + disp, ireg*4
                    );
                }
            }
            break;
          default:
            return -1;
        }
    }
    return cycles;
}
