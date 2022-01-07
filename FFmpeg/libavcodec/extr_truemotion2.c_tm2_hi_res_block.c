
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ CD; } ;
typedef TYPE_1__ TM2Context ;
typedef int AVFrame ;


 int GET_TOK (TYPE_1__*,int ) ;
 int TM2_C_HI ;
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
 int tm2_high_chroma (int ,int ,scalar_t__,scalar_t__,int*) ;

__attribute__((used)) static inline void tm2_hi_res_block(TM2Context *ctx, AVFrame *pic, int bx, int by)
{
    int i;
    int deltas[16];
    TM2_INIT_POINTERS();


    for (i = 0; i < 4; i++) {
        deltas[i] = GET_TOK(ctx, TM2_C_HI);
        deltas[i + 4] = GET_TOK(ctx, TM2_C_HI);
    }
    tm2_high_chroma(U, Ustride, clast, ctx->CD, deltas);
    tm2_high_chroma(V, Vstride, clast + 2, ctx->CD + 2, deltas + 4);


    for (i = 0; i < 16; i++)
        deltas[i] = GET_TOK(ctx, TM2_L_HI);

    tm2_apply_deltas(ctx, Y, Ystride, deltas, last);
}
