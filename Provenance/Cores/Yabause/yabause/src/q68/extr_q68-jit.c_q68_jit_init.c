
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ m68k_start; } ;
struct TYPE_8__ {TYPE_2__* jit_table; int (* free_func ) (TYPE_2__*) ;int * jit_flush; int jit_pages; TYPE_2__* jit_hashchain; TYPE_2__* (* malloc_func ) (int) ;} ;
typedef TYPE_1__ Q68State ;


 int DMSG (char*) ;
 int JIT_EMIT_CHECK_ALIGNED_EA (TYPE_2__*,int ,int ) ;
 int JIT_EMIT_CHECK_ALIGNED_SP (TYPE_2__*,int ,int ) ;
 int Q68_JIT_TABLE_SIZE ;
 int memset (int ,int ,int) ;
 TYPE_2__* stub1 (int) ;
 TYPE_2__* stub2 (int) ;
 int stub3 (TYPE_2__*) ;

int q68_jit_init(Q68State *state)
{
    state->jit_table =
        state->malloc_func(sizeof(*state->jit_table) * Q68_JIT_TABLE_SIZE);
    if (!state->jit_table) {
        DMSG("No memory for JIT table");
        goto error_return;
    }
    state->jit_hashchain =
        state->malloc_func(sizeof(*state->jit_hashchain) * Q68_JIT_TABLE_SIZE);
    if (!state->jit_hashchain) {
        DMSG("No memory for JIT hash chain table");
        goto error_free_jit_table;
    }



    int i;
    for (i = 0; i < Q68_JIT_TABLE_SIZE; i++) {
        state->jit_table[i].m68k_start = 0;
    }



    memset(state->jit_pages, 0, sizeof(state->jit_pages));


    state->jit_flush = ((void*)0);
    return 1;

  error_free_jit_table:
    state->free_func(state->jit_table);
    state->jit_table = ((void*)0);
  error_return:
    return 0;
}
