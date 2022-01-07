
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ current_PC; } ;
typedef TYPE_1__ Q68State ;


 int INSN_GET_COND ;
 int INSN_GET_IMM16 ;
 int INSN_GET_REG0 ;
 int JIT_EMIT_DBcc (int ,int,scalar_t__) ;
 int JIT_EMIT_DBcc_native (int ,int,scalar_t__,scalar_t__) ;
 int JIT_EMIT_TEST_cc (int ,int ) ;
 scalar_t__ btcache_lookup (scalar_t__) ;
 int cond ;
 int current_entry ;
 scalar_t__ imm16 ;
 int reg0 ;

__attribute__((used)) static int opDBcc(Q68State *state, uint32_t opcode)
{
    INSN_GET_COND;
    INSN_GET_REG0;
    INSN_GET_IMM16;
    uint32_t target = state->current_PC + imm16;
    int32_t offset = btcache_lookup(target);
    JIT_EMIT_TEST_cc(cond, current_entry);
    if (offset >= 0) {
        JIT_EMIT_DBcc_native(current_entry, reg0*4, target, offset);
    } else {
        JIT_EMIT_DBcc(current_entry, reg0*4, target);
    }
    return 0;
}
