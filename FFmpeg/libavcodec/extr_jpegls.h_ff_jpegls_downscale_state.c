
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* N; int reset; int* A; int* B; } ;
typedef TYPE_1__ JLSState ;



__attribute__((used)) static inline void ff_jpegls_downscale_state(JLSState *state, int Q)
{
    if (state->N[Q] == state->reset) {
        state->A[Q] >>= 1;
        state->B[Q] >>= 1;
        state->N[Q] >>= 1;
    }
    state->N[Q]++;
}
