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
typedef  int /*<<< orphan*/  uint8_t ;
struct AVHashContext {int dummy; } ;

/* Variables and functions */
 int AV_HASH_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct AVHashContext*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct AVHashContext*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct AVHashContext *ctx, uint8_t *dst, int size)
{
    uint8_t buf[AV_HASH_MAX_SIZE];
    unsigned rsize = FUNC2(ctx);

    FUNC1(ctx, buf);
    FUNC3(dst, buf, FUNC0(size, rsize));
    if (size > rsize)
        FUNC4(dst + rsize, 0, size - rsize);
}