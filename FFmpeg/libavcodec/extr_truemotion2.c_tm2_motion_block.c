
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {unsigned int* D; scalar_t__ CD; TYPE_3__* avctx; } ;
typedef TYPE_1__ TM2Context ;
typedef int AVFrame ;


 int AV_LOG_ERROR ;
 int GET_TOK (TYPE_1__*,int ) ;
 int TM2_INIT_POINTERS_2 () ;
 int TM2_MOT ;
 int TM2_RECALC_BLOCK (int *,int,scalar_t__,scalar_t__) ;
 int * U ;
 int * Uo ;
 int Ustride ;
 int * V ;
 int * Vo ;
 int Vstride ;
 unsigned int* Y ;
 unsigned int* Yo ;
 int Ystride ;
 int av_clip (int,int,int) ;
 int av_log (TYPE_3__*,int ,char*) ;
 scalar_t__ clast ;
 unsigned int* last ;
 int oUstride ;
 int oVstride ;
 int oYstride ;

__attribute__((used)) static inline void tm2_motion_block(TM2Context *ctx, AVFrame *pic, int bx, int by)
{
    int i, j;
    int mx, my;
    TM2_INIT_POINTERS_2();

    mx = GET_TOK(ctx, TM2_MOT);
    my = GET_TOK(ctx, TM2_MOT);
    mx = av_clip(mx, -(bx * 4 + 4), ctx->avctx->width - bx * 4);
    my = av_clip(my, -(by * 4 + 4), ctx->avctx->height - by * 4);

    if (4*bx+mx<0 || 4*by+my<0 || 4*bx+mx+4 > ctx->avctx->width || 4*by+my+4 > ctx->avctx->height) {
        av_log(ctx->avctx, AV_LOG_ERROR, "MV out of picture\n");
        return;
    }

    Yo += my * oYstride + mx;
    Uo += (my >> 1) * oUstride + (mx >> 1);
    Vo += (my >> 1) * oVstride + (mx >> 1);


    for (j = 0; j < 2; j++) {
        for (i = 0; i < 2; i++) {
            U[i] = Uo[i];
            V[i] = Vo[i];
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


    for (j = 0; j < 4; j++) {
        for (i = 0; i < 4; i++) {
            Y[i] = Yo[i];
        }
        Y += Ystride;
        Yo += oYstride;
    }

    Y -= Ystride * 4;
    ctx->D[0] = (unsigned)Y[3] - last[3];
    ctx->D[1] = (unsigned)Y[3 + Ystride] - Y[3];
    ctx->D[2] = (unsigned)Y[3 + Ystride * 2] - Y[3 + Ystride];
    ctx->D[3] = (unsigned)Y[3 + Ystride * 3] - Y[3 + Ystride * 2];
    for (i = 0; i < 4; i++)
        last[i] = Y[i + Ystride * 3];
}
