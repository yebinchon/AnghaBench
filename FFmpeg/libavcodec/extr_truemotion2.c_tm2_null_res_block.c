
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* D; scalar_t__ CD; } ;
typedef TYPE_1__ TM2Context ;
typedef int AVFrame ;


 int TM2_INIT_POINTERS () ;
 int U ;
 int Ustride ;
 int V ;
 int Vstride ;
 int Y ;
 int Ystride ;
 scalar_t__ clast ;
 unsigned int* last ;
 int tm2_apply_deltas (TYPE_1__*,int ,int ,int*,unsigned int*) ;
 int tm2_low_chroma (int ,int ,scalar_t__,scalar_t__,int*,int) ;

__attribute__((used)) static inline void tm2_null_res_block(TM2Context *ctx, AVFrame *pic, int bx, int by)
{
    int i;
    int ct;
    unsigned left, right;
    int diff;
    int deltas[16];
    TM2_INIT_POINTERS();


    deltas[0] = deltas[1] = deltas[2] = deltas[3] = 0;
    tm2_low_chroma(U, Ustride, clast, ctx->CD, deltas, bx);

    deltas[0] = deltas[1] = deltas[2] = deltas[3] = 0;
    tm2_low_chroma(V, Vstride, clast + 2, ctx->CD + 2, deltas, bx);


    for (i = 0; i < 16; i++)
        deltas[i] = 0;

    ct = (unsigned)ctx->D[0] + ctx->D[1] + ctx->D[2] + ctx->D[3];

    if (bx > 0)
        left = last[-1] - (unsigned)ct;
    else
        left = 0;

    right = last[3];
    diff = right - left;
    last[0] = left + (diff >> 2);
    last[1] = left + (diff >> 1);
    last[2] = right - (diff >> 2);
    last[3] = right;
    {
        unsigned tp = left;

        ctx->D[0] = (tp + (ct >> 2)) - left;
        left += ctx->D[0];
        ctx->D[1] = (tp + (ct >> 1)) - left;
        left += ctx->D[1];
        ctx->D[2] = ((tp + ct) - (ct >> 2)) - left;
        left += ctx->D[2];
        ctx->D[3] = (tp + ct) - left;
    }
    tm2_apply_deltas(ctx, Y, Ystride, deltas, last);
}
