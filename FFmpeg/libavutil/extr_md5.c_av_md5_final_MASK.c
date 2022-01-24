#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int len; int /*<<< orphan*/ * ABCD; } ;
typedef  TYPE_1__ AVMD5 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 

void FUNC3(AVMD5 *ctx, uint8_t *dst)
{
    int i;
    uint64_t finalcount = FUNC1(ctx->len << 3);

    FUNC2(ctx, "\200", 1);
    while ((ctx->len & 63) != 56)
        FUNC2(ctx, "", 1);

    FUNC2(ctx, (uint8_t *) &finalcount, 8);

    for (i = 0; i < 4; i++)
        FUNC0(dst + 4 * i, ctx->ABCD[3 - i]);
}