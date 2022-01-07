
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * D; } ;
typedef TYPE_1__ Q68State ;



void q68_set_dreg(Q68State *state, int num, uint32_t value)
{
    state->D[num] = value;
}
