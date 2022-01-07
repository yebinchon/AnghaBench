
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int SR; } ;
typedef TYPE_1__ Q68State ;



void q68_set_sr(Q68State *state, uint16_t value)
{
    state->SR = value;
}
