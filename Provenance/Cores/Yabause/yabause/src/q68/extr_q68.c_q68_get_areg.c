
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * A; } ;
typedef TYPE_1__ Q68State ;



uint32_t q68_get_areg(const Q68State *state, int num)
{
    return state->A[num];
}
