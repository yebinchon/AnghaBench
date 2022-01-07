
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int readw_func; } ;
typedef TYPE_1__ Q68State ;
typedef int Q68ReadFunc ;



void q68_set_readw_func(Q68State *state, Q68ReadFunc func)
{
    state->readw_func = func;
}
