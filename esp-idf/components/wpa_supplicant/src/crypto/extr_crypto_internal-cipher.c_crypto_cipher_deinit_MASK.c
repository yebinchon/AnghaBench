#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ctx_dec; int /*<<< orphan*/  ctx_enc; } ;
struct TYPE_4__ {TYPE_1__ aes; } ;
struct crypto_cipher {int alg; TYPE_2__ u; } ;

/* Variables and functions */
#define  CRYPTO_CIPHER_ALG_3DES 129 
#define  CRYPTO_CIPHER_ALG_AES 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_cipher*) ; 

void  FUNC4(struct crypto_cipher *ctx)
{
	switch (ctx->alg) {
	case CRYPTO_CIPHER_ALG_AES:
#ifdef USE_MBEDTLS_CRYPTO
		mbedtls_aes_free(&(ctx->u.aes.ctx_enc));
		mbedtls_aes_free(&(ctx->u.aes.ctx_dec));
#else /* USE_MBEDTLS_CRYPTO */
		FUNC1(ctx->u.aes.ctx_enc);
		FUNC0(ctx->u.aes.ctx_dec);
#endif /* USE_MBEDTLS_CRYPTO */
		break;
#ifdef CONFIG_DES3
	case CRYPTO_CIPHER_ALG_3DES:
		break;
#endif
	default:
		break;
	}
	FUNC3(ctx);
}