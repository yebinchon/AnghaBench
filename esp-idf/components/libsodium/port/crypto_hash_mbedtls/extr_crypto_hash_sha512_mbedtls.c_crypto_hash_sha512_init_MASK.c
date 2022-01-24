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
typedef  int /*<<< orphan*/  mbedtls_sha512_context ;
typedef  int /*<<< orphan*/  crypto_hash_sha512_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(crypto_hash_sha512_state *state)
{
    mbedtls_sha512_context ctx;
    FUNC0(&ctx);
    int ret = FUNC1(&ctx, 0);
    if (ret != 0) {
        return ret;
    }
    FUNC2(state, &ctx);
    return 0;
}