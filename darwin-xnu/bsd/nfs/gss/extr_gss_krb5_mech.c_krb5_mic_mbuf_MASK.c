#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct hmac_walker_ctx {int /*<<< orphan*/  hmac_ctx; } ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  TYPE_2__* gss_buffer_t ;
typedef  TYPE_3__* crypto_ctx_t ;
struct TYPE_14__ {int output_size; } ;
struct TYPE_11__ {void** ikey; } ;
struct TYPE_13__ {int flags; int /*<<< orphan*/  digest_size; TYPE_8__* di; void** ckey; TYPE_1__ ks; int /*<<< orphan*/  lock; } ;
struct TYPE_12__ {int /*<<< orphan*/  value; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int CRYPTO_KS_ALLOCED ; 
 int EBADRPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GSS_RCV ; 
 int GSS_SND ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_hmac ; 
 int /*<<< orphan*/  FUNC4 (struct hmac_walker_ctx*,TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct hmac_walker_ctx*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC10(crypto_ctx_t ctx, gss_buffer_t header,
	      mbuf_t mbp, uint32_t offset, uint32_t len, gss_buffer_t trailer, uint8_t *mic, int *verify, int ikey, int reverse)
{
	struct hmac_walker_ctx wctx;
	uint8_t digest[ctx->di->output_size];
	int error;
	int kdx = (verify == NULL) ? (reverse ? GSS_RCV : GSS_SND) : (reverse ? GSS_SND : GSS_RCV);
	void *key2use;

	if (ikey) {
		if (!(ctx->flags & CRYPTO_KS_ALLOCED)) {
			FUNC5(ctx->lock);
			if (!(ctx->flags & CRYPTO_KS_ALLOCED)) {
				FUNC1(ctx);
			}
			ctx->flags |= CRYPTO_KS_ALLOCED;
			FUNC6(ctx->lock);
		}
		key2use = ctx->ks.ikey[kdx];
	} else {
		key2use = ctx->ckey[kdx];
	}

	FUNC4(&wctx, ctx, key2use);

	if (header) {
		FUNC3(ctx->di, wctx.hmac_ctx, header->length, header->value);
	}

	error = FUNC7(mbp, offset, len, 1, do_hmac, &wctx);

	if (error)
		return (error);
	if (trailer)
		FUNC3(ctx->di, wctx.hmac_ctx, trailer->length, trailer->value);

	FUNC2(ctx->di, wctx.hmac_ctx, digest);
	FUNC0(wctx.hmac_ctx, M_TEMP);

	if (verify) {
		*verify = (FUNC8(mic, digest, ctx->digest_size) == 0);
		if (!*verify)
			return (EBADRPC);
	} else
		FUNC9(mic, digest, ctx->digest_size);

	return (0);
}