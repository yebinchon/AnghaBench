
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LATTICE_SHIFT ;
 int SAMPLE_FACTOR ;
 int shift_down (int,int ) ;

__attribute__((used)) static int predictor_calc_error(int *k, int *state, int order, int error)
{
    int i, x = error - shift_down(k[order-1] * state[order-1], LATTICE_SHIFT);


    int *k_ptr = &(k[order-2]),
        *state_ptr = &(state[order-2]);
    for (i = order-2; i >= 0; i--, k_ptr--, state_ptr--)
    {
        int k_value = *k_ptr, state_value = *state_ptr;
        x -= shift_down(k_value * state_value, LATTICE_SHIFT);
        state_ptr[1] = state_value + shift_down(k_value * x, LATTICE_SHIFT);
    }
    if (x > (SAMPLE_FACTOR<<16)) x = (SAMPLE_FACTOR<<16);
    if (x < -(SAMPLE_FACTOR<<16)) x = -(SAMPLE_FACTOR<<16);

    state[0] = x;

    return x;
}
