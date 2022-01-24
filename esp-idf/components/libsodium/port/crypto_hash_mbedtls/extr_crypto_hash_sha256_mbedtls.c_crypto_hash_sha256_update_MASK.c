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
typedef  int /*<<< orphan*/  mbedtls_sha256_context ;
typedef  int /*<<< orphan*/  crypto_hash_sha256_state ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(crypto_hash_sha256_state *state,
                          const unsigned char *in, unsigned long long inlen)
{
    mbedtls_sha256_context ctx;
    FUNC1(&ctx, state);
    int ret = FUNC0(&ctx, in, inlen);
    if (ret != 0) {
        return ret;
    }
    FUNC2(state, &ctx);
    return 0;
}