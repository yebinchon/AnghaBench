
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* D; scalar_t__ CD; } ;
typedef TYPE_1__ TM2Context ;
typedef int AVFrame ;


 scalar_t__ GET_TOK (TYPE_1__*,int ) ;
 int TM2_INIT_POINTERS_2 () ;
 int TM2_RECALC_BLOCK (scalar_t__*,int,scalar_t__,scalar_t__) ;
 int TM2_UPD ;
 scalar_t__* U ;
 scalar_t__* Uo ;
 int Ustride ;
 scalar_t__* V ;
 scalar_t__* Vo ;
 int Vstride ;
 unsigned int* Y ;
 unsigned int* Yo ;
 int Ystride ;
 scalar_t__ clast ;
 unsigned int* last ;
 int oUstride ;
 int oVstride ;
 int oYstride ;

__attribute__((used)) static inline void tm2_update_block(TM2Context *ctx, AVFrame *pic, int bx, int by)
{
    int i, j;
    unsigned d;
    TM2_INIT_POINTERS_2();


    for (j = 0; j < 2; j++) {
        for (i = 0; i < 2; i++) {
            U[i] = Uo[i] + GET_TOK(ctx, TM2_UPD);
            V[i] = Vo[i] + GET_TOK(ctx, TM2_UPD);
        }
        U += Ustride;
        V += Vstride;
        Uo += oUstride;
        Vo += oVstride;
    }
    U -= Ustride * 2;
    V -= Vstride * 2;
    TM2_RECALC_BLOCK(U, Ustride, clast, ctx->CD);
    TM2_RECALC_BLOCK(V, Vstride, (clast + 2), (ctx->CD + 2));


    ctx->D[0] = Yo[3] - last[3];
    ctx->D[1] = Yo[3 + oYstride] - Yo[3];
    ctx->D[2] = Yo[3 + oYstride * 2] - Yo[3 + oYstride];
    ctx->D[3] = Yo[3 + oYstride * 3] - Yo[3 + oYstride * 2];

    for (j = 0; j < 4; j++) {
        d = last[3];
        for (i = 0; i < 4; i++) {
            Y[i] = Yo[i] + (unsigned)GET_TOK(ctx, TM2_UPD);
            last[i] = Y[i];
        }
        ctx->D[j] = last[3] - d;
        Y += Ystride;
        Yo += oYstride;
    }
}
