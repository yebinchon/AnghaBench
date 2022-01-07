
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current_PC; } ;
typedef TYPE_1__ Q68State ;


 int JIT_EMIT_ADVANCE_PC (int ,int) ;
 int PC_updated ;
 int current_entry ;
 int jit_PC ;

__attribute__((used)) static void advance_PC(Q68State *state)
{
    JIT_EMIT_ADVANCE_PC(current_entry, jit_PC - (state->current_PC - 2));
    PC_updated = 1;
}
