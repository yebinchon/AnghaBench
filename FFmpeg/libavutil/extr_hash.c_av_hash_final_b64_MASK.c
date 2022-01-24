#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;
struct AVHashContext {int dummy; } ;
typedef  int /*<<< orphan*/  b64 ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int AV_HASH_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int,scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct AVHashContext*,scalar_t__*) ; 
 unsigned int FUNC4 (struct AVHashContext*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 

void FUNC6(struct AVHashContext *ctx, uint8_t *dst, int size)
{
    uint8_t buf[AV_HASH_MAX_SIZE], b64[FUNC0(AV_HASH_MAX_SIZE)];
    unsigned rsize = FUNC4(ctx), osize;

    FUNC3(ctx, buf);
    FUNC2(b64, sizeof(b64), buf, rsize);
    osize = FUNC0(rsize);
    FUNC5(dst, b64, FUNC1(osize, size));
    if (size < osize)
        dst[size - 1] = 0;
}