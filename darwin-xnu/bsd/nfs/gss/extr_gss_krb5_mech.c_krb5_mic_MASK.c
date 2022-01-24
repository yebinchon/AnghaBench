#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  TYPE_2__* gss_buffer_t ;
typedef  TYPE_3__* crypto_ctx_t ;
struct TYPE_16__ {int output_size; } ;
struct TYPE_13__ {void** ikey; } ;
struct TYPE_15__ {int flags; int /*<<< orphan*/  digest_size; TYPE_8__* di; int /*<<< orphan*/  keylen; void** ckey; TYPE_1__ ks; int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {int /*<<< orphan*/  value; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int CRYPTO_KS_ALLOCED ; 
 int GSS_RCV ; 
 int GSS_SND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hmac_ctx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9(crypto_ctx_t ctx, gss_buffer_t header, gss_buffer_t bp,  gss_buffer_t trailer, uint8_t *mic, int *verify, int ikey, int reverse)
{
	uint8_t digest[ctx->di->output_size];
	FUNC1(ctx->di, hmac_ctx);
	int kdx = (verify == NULL) ? (reverse ? GSS_RCV : GSS_SND) : (reverse ? GSS_SND : GSS_RCV);
	void *key2use;

	if (ikey) {
		if (!(ctx->flags & CRYPTO_KS_ALLOCED)) {
			FUNC5(ctx->lock);
			if (!(ctx->flags & CRYPTO_KS_ALLOCED)) {
				FUNC0(ctx);
			}
			ctx->flags |= CRYPTO_KS_ALLOCED;
			FUNC6(ctx->lock);
		}
		key2use = ctx->ks.ikey[kdx];
	} else {
		key2use = ctx->ckey[kdx];
	}

	FUNC3(ctx->di, hmac_ctx, ctx->keylen, key2use);

	if (header) {
		FUNC4(ctx->di, hmac_ctx, header->length, header->value);
	}

	FUNC4(ctx->di, hmac_ctx, bp->length, bp->value);

	if (trailer) {
		FUNC4(ctx->di, hmac_ctx, trailer->length, trailer->value);
	}

	FUNC2(ctx->di, hmac_ctx, digest);

	if (verify) {
		 *verify = (FUNC7(mic, digest, ctx->digest_size) == 0);
	}
	else
		FUNC8(mic, digest, ctx->digest_size);

	return (0);
}