#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_3__ {int** lar; size_t lar_idx; int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ GSMContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(GSMContext *ctx, int16_t *dst, const int16_t *src)
{
    int i;
    int rrp[8];
    int *lar = ctx->lar[ctx->lar_idx];
    int *lar_prev = ctx->lar[ctx->lar_idx ^ 1];
    for (i = 0; i < 8; i++)
        rrp[i] = FUNC1((lar_prev[i] >> 2) + (lar_prev[i] >> 1) + (lar[i] >> 2));
    for (i = 0; i < 13; i++)
        dst[i] = FUNC0(src[i], rrp, ctx->v);

    for (i = 0; i < 8; i++)
        rrp[i] = FUNC1((lar_prev[i] >> 1) + (lar     [i] >> 1));
    for (i = 13; i < 27; i++)
        dst[i] = FUNC0(src[i], rrp, ctx->v);

    for (i = 0; i < 8; i++)
        rrp[i] = FUNC1((lar_prev[i] >> 2) + (lar     [i] >> 1) + (lar[i] >> 2));
    for (i = 27; i < 40; i++)
        dst[i] = FUNC0(src[i], rrp, ctx->v);

    for (i = 0; i < 8; i++)
        rrp[i] = FUNC1(lar[i]);
    for (i = 40; i < 160; i++)
        dst[i] = FUNC0(src[i], rrp, ctx->v);

    ctx->lar_idx ^= 1;
}