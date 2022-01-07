
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int drift; int count; int error_sum; int bias; } ;
typedef TYPE_1__ VlcState ;


 scalar_t__ FFABS (int const) ;
 void* FFMAX (int,int) ;
 void* FFMIN (int,int) ;

__attribute__((used)) static inline void update_vlc_state(VlcState *const state, const int v)
{
    int drift = state->drift;
    int count = state->count;
    state->error_sum += FFABS(v);
    drift += v;

    if (count == 128) {
        count >>= 1;
        drift >>= 1;
        state->error_sum >>= 1;
    }
    count++;

    if (drift <= -count) {
        state->bias = FFMAX(state->bias - 1, -128);

        drift = FFMAX(drift + count, -count + 1);
    } else if (drift > 0) {
        state->bias = FFMIN(state->bias + 1, 127);

        drift = FFMIN(drift - count, 0);
    }

    state->drift = drift;
    state->count = count;
}
