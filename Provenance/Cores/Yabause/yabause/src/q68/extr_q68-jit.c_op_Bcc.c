
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ int16_t ;
struct TYPE_5__ {int current_PC; } ;
typedef TYPE_1__ Q68State ;


 scalar_t__ COND_EQ ;
 scalar_t__ COND_F ;
 scalar_t__ COND_PL ;
 scalar_t__ COND_T ;
 int FAULT_STATUS_IN_DATA ;
 int FAULT_STATUS_RW_WRITE ;
 scalar_t__ IFETCH (TYPE_1__*) ;
 int INSN_GET_COND ;
 int INSN_GET_DISP8 ;
 int JIT_EMIT_ADD_CYCLES (int ,int) ;
 int JIT_EMIT_BSR (int ,int ,int) ;
 int JIT_EMIT_Bcc (int ,int,scalar_t__*) ;
 int JIT_EMIT_Bcc_native (int ,int,scalar_t__) ;
 int JIT_EMIT_CHECK_ALIGNED_SP (int ,int,int) ;
 int JIT_EMIT_TEST_cc (scalar_t__,int ) ;
 int advance_PC (TYPE_1__*) ;
 scalar_t__ btcache_lookup (int) ;
 scalar_t__ cond ;
 int current_entry ;
 scalar_t__ disp ;
 int jit_PC ;
 int record_unresolved_branch (int,scalar_t__) ;

__attribute__((used)) static int op_Bcc(Q68State *state, uint32_t opcode)
{
    INSN_GET_COND;
    INSN_GET_DISP8;
    int cycles = 0;
    if (disp == 0) {
        disp = (int16_t)IFETCH(state);
        cycles = 4;
    }
    uint32_t target = state->current_PC + disp;
    if (cond == COND_F) {


        JIT_EMIT_CHECK_ALIGNED_SP(current_entry, opcode,
                                  FAULT_STATUS_IN_DATA | FAULT_STATUS_RW_WRITE);

        JIT_EMIT_ADD_CYCLES(current_entry, 18);
        advance_PC(state);
        JIT_EMIT_BSR(current_entry, jit_PC, target);
        return 0;
    } else {
        int32_t offset;
        if (target < state->current_PC) {
            offset = btcache_lookup(target);
        } else {
            offset = -1;
        }
        JIT_EMIT_TEST_cc(cond, current_entry);
        if (offset >= 0) {
            JIT_EMIT_Bcc_native(current_entry, target, offset);
        } else {
            int32_t branch_offset;
            JIT_EMIT_Bcc(current_entry, target, &branch_offset);
            if (target >= state->current_PC && branch_offset >= 0) {
                record_unresolved_branch(target, branch_offset);
            }
        }
        JIT_EMIT_ADD_CYCLES(current_entry, 8 + cycles);
        return 0;
    }
}
