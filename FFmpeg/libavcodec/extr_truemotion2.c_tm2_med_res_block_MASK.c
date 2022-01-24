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
struct TYPE_5__ {scalar_t__ CD; } ;
typedef  TYPE_1__ TM2Context ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TM2_C_LO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TM2_L_HI ; 
 int /*<<< orphan*/  U ; 
 int /*<<< orphan*/  Ustride ; 
 int /*<<< orphan*/  V ; 
 int /*<<< orphan*/  Vstride ; 
 int /*<<< orphan*/  Y ; 
 int /*<<< orphan*/  Ystride ; 
 scalar_t__ clast ; 
 int /*<<< orphan*/  last ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int*,int) ; 

__attribute__((used)) static inline void FUNC4(TM2Context *ctx, AVFrame *pic, int bx, int by)
{
    int i;
    int deltas[16];
    FUNC1();

    /* low-res chroma */
    deltas[0] = FUNC0(ctx, TM2_C_LO);
    deltas[1] = deltas[2] = deltas[3] = 0;
    FUNC3(U, Ustride, clast, ctx->CD, deltas, bx);

    deltas[0] = FUNC0(ctx, TM2_C_LO);
    deltas[1] = deltas[2] = deltas[3] = 0;
    FUNC3(V, Vstride, clast + 2, ctx->CD + 2, deltas, bx);

    /* hi-res luma */
    for (i = 0; i < 16; i++)
        deltas[i] = FUNC0(ctx, TM2_L_HI);

    FUNC2(ctx, Y, Ystride, deltas, last);
}