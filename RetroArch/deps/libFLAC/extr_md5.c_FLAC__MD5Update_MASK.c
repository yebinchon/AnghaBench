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
struct TYPE_3__ {unsigned int* bytes; int /*<<< orphan*/ * in; int /*<<< orphan*/  buf; } ;
typedef  unsigned int FLAC__uint32 ;
typedef  int /*<<< orphan*/  FLAC__byte ;
typedef  TYPE_1__ FLAC__MD5Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static void FUNC3(FLAC__MD5Context *ctx, FLAC__byte const *buf, unsigned len)
{
	FLAC__uint32 t;

	/* Update byte count */

	t = ctx->bytes[0];
	if ((ctx->bytes[0] = t + len) < t)
		ctx->bytes[1]++;	/* Carry from low to high */

	t = 64 - (t & 0x3f);	/* Space available in ctx->in (at least 1) */
	if (t > len) {
		FUNC2((FLAC__byte *)ctx->in + 64 - t, buf, len);
		return;
	}
	/* First chunk is an odd size */
	FUNC2((FLAC__byte *)ctx->in + 64 - t, buf, t);
	FUNC1(ctx->in);
	FUNC0(ctx->buf, ctx->in);
	buf += t;
	len -= t;

	/* Process data in 64-byte chunks */
	while (len >= 64) {
		FUNC2(ctx->in, buf, 64);
		FUNC1(ctx->in);
		FUNC0(ctx->buf, ctx->in);
		buf += 64;
		len -= 64;
	}

	/* Handle any remaining bytes of data. */
	FUNC2(ctx->in, buf, len);
}