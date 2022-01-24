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
struct crypto_bignum {int dummy; } ;
typedef  int /*<<< orphan*/  mbedtls_mpi ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC8(const struct crypto_bignum *a,
                           const struct crypto_bignum *p)
{
    mbedtls_mpi exp, tmp;
    int res = -2, ret;

    FUNC5(&exp);
    FUNC5(&tmp);

    /* exp = (p-1) / 2 */
    FUNC0(FUNC7(&exp, (const mbedtls_mpi *) p, 1));
    FUNC0(FUNC6(&exp, 1));
    FUNC0(FUNC3(&tmp, (const mbedtls_mpi *) a, &exp, (const mbedtls_mpi *) p, NULL));

    if (FUNC1(&tmp, 1) == 0) {
        res = 1;
    } else if (FUNC1(&tmp, 0) == 0
            /* The below check is workaround for the case where HW
             * does not behave properly for X ^ A mod M when X is
             * power of M. Instead of returning value 0, value M is
             * returned.*/
            || FUNC2(&tmp, (const mbedtls_mpi *)p) == 0) {
        res = 0;
    } else {
        res = -1;
    }

cleanup:
    FUNC4(&tmp);
    FUNC4(&exp);
    return res;
}