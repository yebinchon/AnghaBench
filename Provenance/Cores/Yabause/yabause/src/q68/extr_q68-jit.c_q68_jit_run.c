
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_14__ {int running; int exec_address; int must_clear; int timestamp; } ;
struct TYPE_13__ {scalar_t__ cycles; unsigned int jit_callstack_top; scalar_t__ PC; int exception; TYPE_1__* jit_callstack; int * A; scalar_t__ jit_abort; int jit_timestamp; } ;
struct TYPE_12__ {scalar_t__ return_PC; int return_native; TYPE_3__* return_entry; } ;
typedef TYPE_2__ Q68State ;
typedef TYPE_3__ Q68JitEntry ;


 int JIT_CALL (TYPE_2__*,scalar_t__,int *) ;
 unsigned int Q68_JIT_CALLSTACK_SIZE ;
 scalar_t__ READU32 (TYPE_2__*,int ) ;
 scalar_t__ UNLIKELY (int ) ;
 int clear_entry (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* q68_jit_find (TYPE_2__*,scalar_t__) ;

void q68_jit_run(Q68State *state, uint32_t cycle_limit,
                 Q68JitEntry **entry_ptr)
{
    Q68JitEntry *entry = *entry_ptr;

  again:
    entry->timestamp = state->jit_timestamp;
    state->jit_timestamp++;
    entry->running = 1;
    int cycles = JIT_CALL(state, cycle_limit - state->cycles,
                          &entry->exec_address);
    entry->running = 0;
    state->jit_abort = 0;
    state->cycles += cycles & 0x3FFF;

    if (UNLIKELY(entry->must_clear)) {
        clear_entry(state, entry);
        entry = ((void*)0);
    } else if (cycles & 0x8000) {
        if (cycles & 0x4000) {
            entry = ((void*)0);
            unsigned int top = state->jit_callstack_top;
            unsigned int i;
            for (i = Q68_JIT_CALLSTACK_SIZE; i > 0; i--) {
                top = (top + Q68_JIT_CALLSTACK_SIZE-1) % Q68_JIT_CALLSTACK_SIZE;
                if (state->jit_callstack[top].return_PC == state->PC) {
                    entry = state->jit_callstack[top].return_entry;
                    entry->exec_address =
                        state->jit_callstack[top].return_native;
                    state->jit_callstack_top = top;
                    if (state->cycles < cycle_limit) {
                        goto again;
                    } else {
                        break;
                    }
                }
            }
        } else {
            const unsigned int top = state->jit_callstack_top;
            const uint32_t return_PC = READU32(state, state->A[7]);
            state->jit_callstack[top].return_PC = return_PC;
            state->jit_callstack[top].return_entry = entry;
            state->jit_callstack[top].return_native = entry->exec_address;
            state->jit_callstack_top = (top+1) % Q68_JIT_CALLSTACK_SIZE;
            entry = ((void*)0);
        }
    } else if (!entry->exec_address) {
        entry = ((void*)0);
    }





    if (!entry && state->cycles < cycle_limit && !state->exception) {
        entry = q68_jit_find(state, state->PC);
        if (entry) {
            goto again;
        }
    }

    *entry_ptr = entry;
}
