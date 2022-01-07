
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int writew_func; } ;
typedef int Q68WriteFunc ;
typedef TYPE_1__ Q68State ;



void q68_set_writew_func(Q68State *state, Q68WriteFunc func)
{
    state->writew_func = func;
}
