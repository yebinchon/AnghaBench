
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* N; int* A; int* B; int near; int qbpp; int limit; } ;
typedef TYPE_1__ JLSState ;
typedef int GetBitContext ;


 int ff_jpegls_update_state_regular (TYPE_1__*,int,int) ;
 int get_ur_golomb_jpegls (int *,int,int ,int ) ;
 int show_bits_long (int *,int) ;

__attribute__((used)) static inline int ls_get_code_regular(GetBitContext *gb, JLSState *state, int Q)
{
    int k, ret;

    for (k = 0; (state->N[Q] << k) < state->A[Q]; k++)
        ;





    ret = get_ur_golomb_jpegls(gb, k, state->limit, state->qbpp);


    if (ret & 1)
        ret = -(ret + 1 >> 1);
    else
        ret >>= 1;


    if (!state->near && !k && (2 * state->B[Q] <= -state->N[Q]))
        ret = -(ret + 1);

    ret = ff_jpegls_update_state_regular(state, Q, ret);

    return ret;
}
