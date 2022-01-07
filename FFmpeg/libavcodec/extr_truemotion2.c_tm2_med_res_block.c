
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ CD; } ;
typedef TYPE_1__ TM2Context ;
typedef int AVFrame ;


 int GET_TOK (TYPE_1__*,int ) ;
 int TM2_C_LO ;
 int TM2_INIT_POINTERS () ;
 int TM2_L_HI ;
 int U ;
 int Ustride ;
 int V ;
 int Vstride ;
 int Y ;
 int Ystride ;
 scalar_t__ clast ;
 int last ;
 int tm2_apply_deltas (TYPE_1__*,int ,int ,int*,int ) ;
 int tm2_low_chroma (int ,int ,scalar_t__,scalar_t__,int*,int) ;

__attribute__((used)) static inline void tm2_med_res_block(TM2Context *ctx, AVFrame *pic, int bx, int by)
{
    int i;
    int deltas[16];
    TM2_INIT_POINTERS();


    deltas[0] = GET_TOK(ctx, TM2_C_LO);
    deltas[1] = deltas[2] = deltas[3] = 0;
    tm2_low_chroma(U, Ustride, clast, ctx->CD, deltas, bx);

    deltas[0] = GET_TOK(ctx, TM2_C_LO);
    deltas[1] = deltas[2] = deltas[3] = 0;
    tm2_low_chroma(V, Vstride, clast + 2, ctx->CD + 2, deltas, bx);


    for (i = 0; i < 16; i++)
        deltas[i] = GET_TOK(ctx, TM2_L_HI);

    tm2_apply_deltas(ctx, Y, Ystride, deltas, last);
}
