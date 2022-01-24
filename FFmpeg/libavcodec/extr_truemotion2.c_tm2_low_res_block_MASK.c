#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* D; scalar_t__ CD; } ;
typedef  TYPE_1__ TM2Context ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TM2_C_LO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TM2_L_LO ; 
 int /*<<< orphan*/  U ; 
 int /*<<< orphan*/  Ustride ; 
 int /*<<< orphan*/  V ; 
 int /*<<< orphan*/  Vstride ; 
 int /*<<< orphan*/  Y ; 
 int /*<<< orphan*/  Ystride ; 
 scalar_t__ clast ; 
 int* last ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int*,int) ; 

__attribute__((used)) static inline void FUNC4(TM2Context *ctx, AVFrame *pic, int bx, int by)
{
    int i;
    int t1, t2;
    int deltas[16];
    FUNC1();

    /* low-res chroma */
    deltas[0] = FUNC0(ctx, TM2_C_LO);
    deltas[1] = deltas[2] = deltas[3] = 0;
    FUNC3(U, Ustride, clast, ctx->CD, deltas, bx);

    deltas[0] = FUNC0(ctx, TM2_C_LO);
    deltas[1] = deltas[2] = deltas[3] = 0;
    FUNC3(V, Vstride, clast + 2, ctx->CD + 2, deltas, bx);

    /* low-res luma */
    for (i = 0; i < 16; i++)
        deltas[i] = 0;

    deltas[ 0] = FUNC0(ctx, TM2_L_LO);
    deltas[ 2] = FUNC0(ctx, TM2_L_LO);
    deltas[ 8] = FUNC0(ctx, TM2_L_LO);
    deltas[10] = FUNC0(ctx, TM2_L_LO);

    if (bx > 0)
        last[0] = (int)((unsigned)last[-1] - ctx->D[0] - ctx->D[1] - ctx->D[2] - ctx->D[3] + last[1]) >> 1;
    else
        last[0] = (int)((unsigned)last[1]  - ctx->D[0] - ctx->D[1] - ctx->D[2] - ctx->D[3])>> 1;
    last[2] = (int)((unsigned)last[1] + last[3]) >> 1;

    t1 = ctx->D[0] + ctx->D[1];
    ctx->D[0] = t1 >> 1;
    ctx->D[1] = t1 - (t1 >> 1);
    t2 = ctx->D[2] + ctx->D[3];
    ctx->D[2] = t2 >> 1;
    ctx->D[3] = t2 - (t2 >> 1);

    FUNC2(ctx, Y, Ystride, deltas, last);
}