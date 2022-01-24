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
typedef  int u8 ;
typedef  int /*<<< orphan*/  mbedtls_aes_context ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (void**) ; 
 scalar_t__ FUNC5 (void**,int const*,int) ; 
 scalar_t__ FUNC6 (void**,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int) ; 

int  FUNC9(const u8 *kek, int n, const u8 *plain, u8 *cipher)
{
	u8 *a, *r, b[16];
	int i, j;
#ifdef USE_MBEDTLS_CRYPTO
	int32_t ret = 0;
	mbedtls_aes_context ctx;
#else /* USE_MBEDTLS_CRYPTO */
	void *ctx;
#endif /* USE_MBEDTLS_CRYPTO */

	a = cipher;
	r = cipher + 8;

	/* 1) Initialize variables. */
	FUNC8(a, 0xa6, 8);
	FUNC7(r, plain, 8 * n);

#ifdef USE_MBEDTLS_CRYPTO
	mbedtls_aes_init(&ctx);
	ret = mbedtls_aes_setkey_enc(&ctx, kek, 128);
	if (ret < 0) {
		mbedtls_aes_free(&ctx);
		return ret;
	}
#else /* USE_MBEDTLS_CRYPTO */
	ctx = FUNC2(kek, 16);
	if (ctx == NULL)
		return -1;
#endif /* USE_MBEDTLS_CRYPTO */

	/* 2) Calculate intermediate values.
	 * For j = 0 to 5
	 *     For i=1 to n
	 *         B = AES(K, A | R[i])
	 *         A = MSB(64, B) ^ t where t = (n*j)+i
	 *         R[i] = LSB(64, B)
	 */
	for (j = 0; j <= 5; j++) {
		r = cipher + 8;
		for (i = 1; i <= n; i++) {
			FUNC7(b, a, 8);
			FUNC7(b + 8, r, 8);
#ifdef USE_MBEDTLS_CRYPTO
			ret = mbedtls_internal_aes_encrypt(&ctx, b, b);
			if (ret != 0)
				break;
#else /* USE_MBEDTLS_CRYPTO */
			FUNC0(ctx, b, b);
#endif /* USE_MBEDTLS_CRYPTO */
			FUNC7(a, b, 8);
			a[7] ^= n * j + i;
			FUNC7(r, b + 8, 8);
			r += 8;
		}
	}
#ifdef USE_MBEDTLS_CRYPTO
	mbedtls_aes_free(&ctx);
#else /* USE_MBEDTLS_CRYPTO */
	FUNC1(ctx);
#endif /* USE_MBEDTLS_CRYPTO */

	/* 3) Output the results.
	 *
	 * These are already in @cipher due to the location of temporary
	 * variables.
	 */

	return 0;
}