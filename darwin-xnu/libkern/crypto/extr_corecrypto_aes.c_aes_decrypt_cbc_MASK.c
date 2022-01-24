#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ccmode_cbc {int /*<<< orphan*/  block_size; } ;
typedef  int /*<<< orphan*/  aes_rval ;
struct TYPE_4__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ aes_decrypt_ctx ;
struct TYPE_5__ {struct ccmode_cbc* ccaes_cbc_decrypt; } ;

/* Variables and functions */
 int /*<<< orphan*/  aes_good ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccmode_cbc const*,int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccmode_cbc const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  ctx_iv ; 
 TYPE_2__* g_crypto_funcs ; 

aes_rval FUNC3(const unsigned char *in_blk, const unsigned char *in_iv, unsigned int num_blk,
					 	 unsigned char *out_blk, aes_decrypt_ctx cx[1])
{
	const struct ccmode_cbc *cbc = g_crypto_funcs->ccaes_cbc_decrypt;
	FUNC0(cbc->block_size, ctx_iv);

	FUNC1(cbc, ctx_iv, in_iv);
	FUNC2(cbc, cx[0].ctx, ctx_iv, num_blk, in_blk, out_blk);	//Actually cbc decrypt.

	return aes_good;
}