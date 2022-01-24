#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {unsigned int* D; scalar_t__ CD; TYPE_3__* avctx; } ;
typedef  TYPE_1__ TM2Context ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TM2_MOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * U ; 
 int /*<<< orphan*/ * Uo ; 
 int Ustride ; 
 int /*<<< orphan*/ * V ; 
 int /*<<< orphan*/ * Vo ; 
 int Vstride ; 
 unsigned int* Y ; 
 unsigned int* Yo ; 
 int Ystride ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ clast ; 
 unsigned int* last ; 
 int oUstride ; 
 int oVstride ; 
 int oYstride ; 

__attribute__((used)) static inline void FUNC5(TM2Context *ctx, AVFrame *pic, int bx, int by)
{
    int i, j;
    int mx, my;
    FUNC1();

    mx = FUNC0(ctx, TM2_MOT);
    my = FUNC0(ctx, TM2_MOT);
    mx = FUNC3(mx, -(bx * 4 + 4), ctx->avctx->width  - bx * 4);
    my = FUNC3(my, -(by * 4 + 4), ctx->avctx->height - by * 4);

    if (4*bx+mx<0 || 4*by+my<0 || 4*bx+mx+4 > ctx->avctx->width || 4*by+my+4 > ctx->avctx->height) {
        FUNC4(ctx->avctx, AV_LOG_ERROR, "MV out of picture\n");
        return;
    }

    Yo += my * oYstride + mx;
    Uo += (my >> 1) * oUstride + (mx >> 1);
    Vo += (my >> 1) * oVstride + (mx >> 1);

    /* copy chroma */
    for (j = 0; j < 2; j++) {
        for (i = 0; i < 2; i++) {
            U[i] = Uo[i];
            V[i] = Vo[i];
        }
        U  += Ustride;
        V  += Vstride;
        Uo += oUstride;
        Vo += oVstride;
    }
    U -= Ustride * 2;
    V -= Vstride * 2;
    FUNC2(U, Ustride, clast, ctx->CD);
    FUNC2(V, Vstride, (clast + 2), (ctx->CD + 2));

    /* copy luma */
    for (j = 0; j < 4; j++) {
        for (i = 0; i < 4; i++) {
            Y[i] = Yo[i];
        }
        Y  += Ystride;
        Yo += oYstride;
    }
    /* calculate deltas */
    Y -= Ystride * 4;
    ctx->D[0] = (unsigned)Y[3] - last[3];
    ctx->D[1] = (unsigned)Y[3 + Ystride] - Y[3];
    ctx->D[2] = (unsigned)Y[3 + Ystride * 2] - Y[3 + Ystride];
    ctx->D[3] = (unsigned)Y[3 + Ystride * 3] - Y[3 + Ystride * 2];
    for (i = 0; i < 4; i++)
        last[i] = Y[i + Ystride * 3];
}