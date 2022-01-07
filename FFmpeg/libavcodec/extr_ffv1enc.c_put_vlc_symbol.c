
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int error_sum; int drift; int bias; } ;
typedef TYPE_1__ VlcState ;
typedef int PutBitContext ;


 int av_assert2 (int) ;
 int ff_dlog (int *,char*,int,int,int ,int,int,int,int) ;
 int fold (int ,int) ;
 int set_sr_golomb (int *,int,int,int,int) ;
 int update_vlc_state (TYPE_1__* const,int) ;

__attribute__((used)) static inline void put_vlc_symbol(PutBitContext *pb, VlcState *const state,
                                  int v, int bits)
{
    int i, k, code;
    v = fold(v - state->bias, bits);

    i = state->count;
    k = 0;
    while (i < state->error_sum) {
        k++;
        i += i;
    }

    av_assert2(k <= 13);

    code = v ^ ((2 * state->drift + state->count) >> 31);

    ff_dlog(((void*)0), "v:%d/%d bias:%d error:%d drift:%d count:%d k:%d\n", v, code,
            state->bias, state->error_sum, state->drift, state->count, k);
    set_sr_golomb(pb, code, k, 12, bits);

    update_vlc_state(state, v);
}
