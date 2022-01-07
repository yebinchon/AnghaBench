
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ m68k_start; struct TYPE_6__* next; int native_code; int exec_address; } ;
struct TYPE_5__ {TYPE_2__** jit_hashchain; } ;
typedef TYPE_1__ Q68State ;
typedef TYPE_2__ Q68JitEntry ;


 int JIT_HASH (scalar_t__) ;

Q68JitEntry *q68_jit_find(Q68State *state, uint32_t address)
{
    const int hashval = JIT_HASH(address);
    Q68JitEntry *entry = state->jit_hashchain[hashval];
    while (entry) {
        if (entry->m68k_start == address) {





            entry->exec_address = entry->native_code;
            return entry;
        }
        entry = entry->next;
    }
    return ((void*)0);
}
