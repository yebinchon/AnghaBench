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
struct cpx {int /*<<< orphan*/  cpx_iv_aes_ctx; int /*<<< orphan*/  cpx_flags; int /*<<< orphan*/  cpx_key_len; int /*<<< orphan*/  cpx_cached_key; } ;
typedef  int /*<<< orphan*/  aes_encrypt_ctx ;
typedef  int /*<<< orphan*/  SHA1_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CPX_IV_AES_CTX_INITIALIZED ; 
 int /*<<< orphan*/  CPX_IV_AES_CTX_VFS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (struct cpx*,int /*<<< orphan*/ *) ; 

aes_encrypt_ctx *FUNC6(struct cpx *cpx)
{
	if (FUNC0(cpx->cpx_flags, CPX_IV_AES_CTX_INITIALIZED))
	return &cpx->cpx_iv_aes_ctx;

	SHA1_CTX sha1ctxt;
	uint8_t digest[SHA_DIGEST_LENGTH]; /* Kiv */

	/* First init the cp_cache_iv_key[] */
	FUNC3(&sha1ctxt);

	/*
	 * We can only use this when the keys are generated in the AP; As a result
	 * we only use the first 32 bytes of key length in the cache key
	 */
	FUNC4(&sha1ctxt, cpx->cpx_cached_key, cpx->cpx_key_len);
	FUNC2(digest, &sha1ctxt);

	FUNC5(cpx, digest);
	FUNC1(cpx->cpx_flags, CPX_IV_AES_CTX_VFS);

	return &cpx->cpx_iv_aes_ctx;
}