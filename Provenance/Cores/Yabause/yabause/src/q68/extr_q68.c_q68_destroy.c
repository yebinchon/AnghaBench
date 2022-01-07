
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* free_func ) (TYPE_1__*) ;} ;
typedef TYPE_1__ Q68State ;


 int q68_jit_cleanup (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

void q68_destroy(Q68State *state)
{



    state->free_func(state);
}
