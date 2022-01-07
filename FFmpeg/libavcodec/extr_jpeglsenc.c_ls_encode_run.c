
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* run_index; } ;
typedef int PutBitContext ;
typedef TYPE_1__ JLSState ;


 int* ff_log2_run ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static inline void ls_encode_run(JLSState *state, PutBitContext *pb, int run,
                                 int comp, int trail)
{
    while (run >= (1 << ff_log2_run[state->run_index[comp]])) {
        put_bits(pb, 1, 1);
        run -= 1 << ff_log2_run[state->run_index[comp]];
        if (state->run_index[comp] < 31)
            state->run_index[comp]++;
    }

    if (!trail && run) {
        put_bits(pb, 1, 1);
    } else if (trail) {
        put_bits(pb, 1, 0);
        if (ff_log2_run[state->run_index[comp]])
            put_bits(pb, ff_log2_run[state->run_index[comp]], run);
    }
}
