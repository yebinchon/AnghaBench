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
typedef  int u32 ;
struct MD5Context {int* bits; unsigned char* in; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,unsigned int) ; 

void 
FUNC3(struct MD5Context *ctx, unsigned char const *buf, unsigned len)
{
    u32 t;

    /* Update bitcount */

    t = ctx->bits[0];
    if ((ctx->bits[0] = t + ((u32) len << 3)) < t)
	ctx->bits[1]++;		/* Carry from low to high */
    ctx->bits[1] += len >> 29;

    t = (t >> 3) & 0x3f;	/* Bytes already in shsInfo->data */

    /* Handle any leading odd-sized chunks */

    if (t) {
	unsigned char *p = (unsigned char *) ctx->in + t;

	t = 64 - t;
	if (len < t) {
	    FUNC2(p, buf, len);
	    return;
	}
	FUNC2(p, buf, t);
	FUNC1(ctx->in, 16);
	FUNC0(ctx->buf, (u32 *) ctx->in);
	buf += t;
	len -= t;
    }
    /* Process data in 64-byte chunks */

    while (len >= 64) {
	FUNC2(ctx->in, buf, 64);
	FUNC1(ctx->in, 16);
	FUNC0(ctx->buf, (u32 *) ctx->in);
	buf += 64;
	len -= 64;
    }

    /* Handle any remaining bytes of data. */

    FUNC2(ctx->in, buf, len);
}