
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* A; int* N; int limit; int* B; int twonear; int qbpp; } ;
typedef TYPE_1__ JLSState ;
typedef int GetBitContext ;


 int FFABS (int) ;
 int ff_jpegls_downscale_state (TYPE_1__*,int) ;
 int get_ur_golomb_jpegls (int *,int,int,int ) ;
 int show_bits_long (int *,int) ;

__attribute__((used)) static inline int ls_get_code_runterm(GetBitContext *gb, JLSState *state,
                                      int RItype, int limit_add)
{
    int k, ret, temp, map;
    int Q = 365 + RItype;

    temp = state->A[Q];
    if (RItype)
        temp += state->N[Q] >> 1;

    for (k = 0; (state->N[Q] << k) < temp; k++)
        ;





    ret = get_ur_golomb_jpegls(gb, k, state->limit - limit_add - 1,
                               state->qbpp);


    map = 0;
    if (!k && (RItype || ret) && (2 * state->B[Q] < state->N[Q]))
        map = 1;
    ret += RItype + map;

    if (ret & 1) {
        ret = map - (ret + 1 >> 1);
        state->B[Q]++;
    } else {
        ret = ret >> 1;
    }

    if(FFABS(ret) > 0xFFFF)
        return -0x10000;

    state->A[Q] += FFABS(ret) - RItype;
    ret *= state->twonear;
    ff_jpegls_downscale_state(state, Q);

    return ret;
}
