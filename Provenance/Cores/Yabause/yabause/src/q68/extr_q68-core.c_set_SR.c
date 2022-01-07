
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const uint16_t ;
struct TYPE_4__ {int SR; int USP; int * A; int SSP; } ;
typedef TYPE_1__ Q68State ;


 int const SR_S ;
 int check_interrupt (TYPE_1__*) ;

__attribute__((used)) static void set_SR(Q68State *state, uint16_t value)
{
    const uint16_t old_value = state->SR;
    state->SR = value;
    if ((old_value ^ value) & SR_S) {
        if (value & SR_S) {
            state->USP = state->A[7];
            state->A[7] = state->SSP;
        } else {
            state->SSP = state->A[7];
            state->A[7] = state->USP;
        }
    }
    check_interrupt(state);
}
