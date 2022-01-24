#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* crypto_ctx_t ;
struct TYPE_8__ {int /*<<< orphan*/ * dec; int /*<<< orphan*/ * enc; int /*<<< orphan*/ ** ikey; } ;
struct TYPE_9__ {scalar_t__ keylen; int /*<<< orphan*/ * key; int /*<<< orphan*/ ** ckey; TYPE_3__ ks; TYPE_2__* dec_mode; TYPE_1__* enc_mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t GSS_RCV ; 
 size_t GSS_SND ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(crypto_ctx_t ctx)
{
	ctx->ks.ikey[GSS_SND] = NULL;
	if (ctx->ks.ikey[GSS_RCV] && ctx->key != ctx->ks.ikey[GSS_RCV]) {
		FUNC1(ctx->keylen, ctx->ks.ikey[GSS_RCV]);
		FUNC0(ctx->ks.ikey[GSS_RCV], M_TEMP);
	}
	ctx->ks.ikey[GSS_RCV] = NULL;
	if (ctx->ks.enc) {
		FUNC2(ctx->enc_mode->size, ctx->ks.enc);
		FUNC0(ctx->ks.enc, M_TEMP);
		ctx->ks.enc = NULL;
	}
	if (ctx->ks.dec) {
		FUNC2(ctx->dec_mode->size, ctx->ks.dec);
		FUNC0(ctx->ks.dec, M_TEMP);
		ctx->ks.dec = NULL;
	}
	if (ctx->ckey[GSS_SND] && ctx->ckey[GSS_SND] != ctx->key) {
		FUNC1(ctx->keylen, ctx->ckey[GSS_SND]);
		FUNC0(ctx->ckey[GSS_SND], M_TEMP);
	}
	ctx->ckey[GSS_SND] = NULL;
	if (ctx->ckey[GSS_RCV] && ctx->ckey[GSS_RCV] != ctx->key) {
		FUNC1(ctx->keylen, ctx->ckey[GSS_RCV]);
		FUNC0(ctx->ckey[GSS_RCV], M_TEMP);
	}
	ctx->ckey[GSS_RCV] = NULL;
	ctx->key = NULL;
	ctx->keylen = 0;
}