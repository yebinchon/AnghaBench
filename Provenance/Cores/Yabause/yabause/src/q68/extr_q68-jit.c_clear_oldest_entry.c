
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ m68k_start; int timestamp; } ;
struct TYPE_5__ {scalar_t__ jit_total_data; TYPE_4__* jit_table; int jit_timestamp; } ;
typedef TYPE_1__ Q68State ;


 int DMSG (char*) ;
 scalar_t__ LIKELY (int) ;
 int Q68_JIT_TABLE_SIZE ;
 scalar_t__ TIMESTAMP_COMPARE (int ,int ,int ) ;
 int clear_entry (TYPE_1__*,TYPE_4__*) ;

__attribute__((used)) static void clear_oldest_entry(Q68State *state)
{
    int oldest = -1;
    int index;
    for (index = 0; index < Q68_JIT_TABLE_SIZE; index++) {
        if (state->jit_table[index].m68k_start == 0) {
            continue;
        }
        if (oldest < 0
         || TIMESTAMP_COMPARE(state->jit_timestamp,
                              state->jit_table[index].timestamp,
                              state->jit_table[oldest].timestamp) < 0) {
            oldest = index;
        }
    }
    if (LIKELY(oldest >= 0)) {
        clear_entry(state, &state->jit_table[oldest]);
    } else {
        DMSG("Tried to clear oldest entry from an empty table!");

        state->jit_total_data = 0;
    }
}
