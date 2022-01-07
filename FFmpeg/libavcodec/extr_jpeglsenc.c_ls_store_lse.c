
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ T1; scalar_t__ T2; scalar_t__ T3; scalar_t__ reset; int maxval; int near; int bpp; int member_0; } ;
typedef int PutBitContext ;
typedef TYPE_1__ JLSState ;


 int LSE ;
 int ff_jpegls_reset_coding_parameters (TYPE_1__*,int) ;
 int put_bits (int *,int,int) ;
 int put_marker (int *,int ) ;

__attribute__((used)) static void ls_store_lse(JLSState *state, PutBitContext *pb)
{

    JLSState state2 = { 0 };
    state2.bpp = state->bpp;
    state2.near = state->near;
    ff_jpegls_reset_coding_parameters(&state2, 1);
    if (state->T1 == state2.T1 &&
        state->T2 == state2.T2 &&
        state->T3 == state2.T3 &&
        state->reset == state2.reset)
        return;

    put_marker(pb, LSE);
    put_bits(pb, 16, 13);
    put_bits(pb, 8, 1);
    put_bits(pb, 16, state->maxval);
    put_bits(pb, 16, state->T1);
    put_bits(pb, 16, state->T2);
    put_bits(pb, 16, state->T3);
    put_bits(pb, 16, state->reset);
}
