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
typedef  int uint64_t ;
struct TYPE_4__ {int count; int digest_len; int* state; } ;
typedef  TYPE_1__ AVSHA512 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 

void FUNC4(AVSHA512* ctx, uint8_t *digest)
{
    uint64_t i = 0;
    uint64_t finalcount = FUNC2(ctx->count << 3);

    FUNC3(ctx, "\200", 1);
    while ((ctx->count & 127) != 112)
        FUNC3(ctx, "", 1);
    FUNC3(ctx, (uint8_t *)&i, 8);
    FUNC3(ctx, (uint8_t *)&finalcount, 8); /* Should cause a transform() */
    for (i = 0; i < ctx->digest_len; i++)
        FUNC1(digest + i*8, ctx->state[i]);
    if (ctx->digest_len & 1) /* SHA512/224 is 28 bytes, and is not divisible by 8. */
        FUNC0(digest + i*8, ctx->state[i] >> 32);
}