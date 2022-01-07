
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* jit_flush ) () ;} ;
typedef TYPE_1__ Q68State ;



void q68_set_jit_flush_func(Q68State *state, void (*flush_func)(void))
{
    state->jit_flush = flush_func;
}
