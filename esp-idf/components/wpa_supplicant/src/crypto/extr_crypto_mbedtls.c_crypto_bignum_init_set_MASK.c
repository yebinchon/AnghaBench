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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_bignum {int dummy; } ;
typedef  int /*<<< orphan*/  mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

struct crypto_bignum *FUNC4(const u8 *buf, size_t len)
{
    int ret = 0;
    mbedtls_mpi *bn = FUNC3(sizeof(mbedtls_mpi));
    if (bn == NULL) {
        return NULL;
    }

    FUNC0(FUNC1(bn, buf, len));
    return (struct crypto_bignum *) bn;

cleanup:
    FUNC2(bn);
    return NULL;
}