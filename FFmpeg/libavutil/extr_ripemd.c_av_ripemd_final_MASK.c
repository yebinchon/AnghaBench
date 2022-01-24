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
struct TYPE_4__ {int count; int digest_len; int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ AVRIPEMD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 

void FUNC3(AVRIPEMD* ctx, uint8_t *digest)
{
    int i;
    uint64_t finalcount = FUNC1(ctx->count << 3);

    FUNC2(ctx, "\200", 1);
    while ((ctx->count & 63) != 56)
        FUNC2(ctx, "", 1);
    FUNC2(ctx, (uint8_t *)&finalcount, 8); /* Should cause a transform() */
    for (i = 0; i < ctx->digest_len; i++)
        FUNC0(digest + i*4, ctx->state[i]);
}