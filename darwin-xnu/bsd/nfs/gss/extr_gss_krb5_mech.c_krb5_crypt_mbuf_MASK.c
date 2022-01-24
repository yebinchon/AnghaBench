#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct crypt_walker_ctx {int /*<<< orphan*/  iv; int /*<<< orphan*/  crypt_ctx; } ;
struct ccmode_cbc {int block_size; } ;
typedef  scalar_t__ mbuf_t ;
typedef  int errno_t ;
typedef  int /*<<< orphan*/  cts_pad ;
typedef  TYPE_2__* crypto_ctx_t ;
typedef  int /*<<< orphan*/  (* ccpad_func ) (struct ccmode_cbc const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  cccbc_ctx ;
typedef  int /*<<< orphan*/  block ;
struct TYPE_6__ {int /*<<< orphan*/ * dec; int /*<<< orphan*/ * enc; } ;
struct TYPE_7__ {int flags; int mpad; TYPE_1__ ks; int /*<<< orphan*/  lock; struct ccmode_cbc* dec_mode; struct ccmode_cbc* enc_mode; } ;

/* Variables and functions */
 int CRYPTO_CTS_ENABLE ; 
 int CRYPTO_KS_ALLOCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccmode_cbc const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ccmode_cbc const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  do_crypt ; 
 int /*<<< orphan*/  FUNC5 (struct crypt_walker_ctx*,int,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,size_t*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ,struct crypt_walker_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

errno_t  /* __attribute__((optnone)) */
FUNC15(crypto_ctx_t ctx, mbuf_t *mbp, uint32_t len, int encrypt, cccbc_ctx *ks)
{
	struct crypt_walker_ctx wctx;
	const struct ccmode_cbc *ccmode = encrypt ? ctx->enc_mode : ctx->dec_mode;
	size_t plen = len;
	size_t cts_len = 0;
	mbuf_t mb, lmb;
	int error;

	if (!(ctx->flags & CRYPTO_KS_ALLOCED)) {
		FUNC9(ctx->lock);
		if (!(ctx->flags & CRYPTO_KS_ALLOCED)) {
			FUNC2(ctx);
		}
		ctx->flags |= CRYPTO_KS_ALLOCED;
		FUNC10(ctx->lock);
	}
	if (!ks)
		ks = encrypt ? ctx->ks.enc : ctx->ks.dec;

	if ((ctx->flags & CRYPTO_CTS_ENABLE) && ctx->mpad == 1) {
		uint8_t block[ccmode->block_size];
		/* if the length is less than or equal to a blocksize. We just encrypt the block */
		if (len <= ccmode->block_size) {
			if (len < ccmode->block_size) {
				FUNC14(block, 0, sizeof(block));
				FUNC6(*mbp, block, ccmode->block_size);
			}
			plen = ccmode->block_size;
		} else {
			/* determine where the last two blocks are */
			uint32_t r = len % ccmode->block_size;

			cts_len  = r ? r + ccmode->block_size : 2 * ccmode->block_size;
			plen = len - cts_len;
			/* If plen is 0 we only have two blocks to crypt with ccpad below */
			if (plen == 0)
				lmb = *mbp;
			else {
				FUNC8(*mbp, 0, &plen, &mb, &lmb, 0);
				FUNC1(*mbp == mb);
				FUNC1(plen == len - cts_len);
				FUNC1(FUNC7(mb, 0) == plen);
				FUNC1(FUNC7(lmb, 0) == cts_len);
			}
		}
	} else if (len % ctx->mpad) {
		uint8_t pad_block[ctx->mpad];
		size_t padlen = ctx->mpad - (len % ctx->mpad);

		FUNC14(pad_block, 0, padlen);
		error = FUNC6(*mbp, pad_block, padlen);
		if (error)
			return (error);
		plen = len + padlen;
	}
	FUNC5(&wctx, encrypt, ctx, ks);
	if (plen) {
		error = FUNC13(*mbp, 0, plen, ccmode->block_size, do_crypt, &wctx);
		if (error)
			return (error);
	}

	if ((ctx->flags & CRYPTO_CTS_ENABLE) && cts_len) {
		uint8_t cts_pad[2*ccmode->block_size];
		ccpad_func do_ccpad = encrypt ? ccpad_cts3_encrypt : ccpad_cts3_decrypt;

		FUNC1(cts_len <= 2*ccmode->block_size && cts_len > ccmode->block_size);
		FUNC14(cts_pad, 0, sizeof(cts_pad));
		FUNC11(lmb, 0, cts_len, cts_pad);
		FUNC12(lmb);
		do_ccpad(ccmode, wctx.crypt_ctx, wctx.iv, cts_len, cts_pad, cts_pad);
		FUNC6(*mbp, cts_pad, cts_len);
	}
	FUNC0(wctx.iv, M_TEMP);

	return (0);
}