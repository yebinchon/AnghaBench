
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * jit_table; int (* free_func ) (int *) ;int * jit_hashchain; } ;
typedef TYPE_1__ Q68State ;


 int q68_jit_reset (TYPE_1__*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;

void q68_jit_cleanup(Q68State *state)
{
    q68_jit_reset(state);
    state->free_func(state->jit_hashchain);
    state->jit_hashchain = ((void*)0);
    state->free_func(state->jit_table);
    state->jit_table = ((void*)0);
}
