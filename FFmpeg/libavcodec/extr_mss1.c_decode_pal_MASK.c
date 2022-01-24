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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  free_colours; int /*<<< orphan*/  pal; } ;
typedef  TYPE_1__ MSS12Context ;
typedef  int /*<<< orphan*/  ArithCoder ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(MSS12Context *ctx, ArithCoder *acoder)
{
    int i, ncol, r, g, b;
    uint32_t *pal = ctx->pal + 256 - ctx->free_colours;

    if (!ctx->free_colours)
        return 0;

    ncol = FUNC1(acoder, ctx->free_colours + 1);
    for (i = 0; i < ncol; i++) {
        r = FUNC0(acoder, 8);
        g = FUNC0(acoder, 8);
        b = FUNC0(acoder, 8);
        *pal++ = (0xFFU << 24) | (r << 16) | (g << 8) | b;
    }

    return !!ncol;
}