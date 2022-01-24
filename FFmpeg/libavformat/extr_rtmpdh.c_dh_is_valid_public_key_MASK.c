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
typedef  int /*<<< orphan*/ * FFBigNum ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(FFBigNum y, FFBigNum p, FFBigNum q)
{
    FFBigNum bn = NULL;
    int ret = FUNC0(EINVAL);

    FUNC6(bn);
    if (!bn)
        return FUNC0(ENOMEM);

    /* y must lie in [2, p - 1] */
    FUNC7(bn, 1);
    if (!FUNC1(y, bn))
        goto fail;

    /* bn = p - 2 */
    FUNC3(bn, p);
    FUNC8(bn, 1);
    if (!FUNC1(y, bn))
        goto fail;

    /* Verify with Sophie-Germain prime
     *
     * This is a nice test to make sure the public key position is calculated
     * correctly. This test will fail in about 50% of the cases if applied to
     * random data.
     */
    /* y must fulfill y^q mod p = 1 */
    if ((ret = FUNC5(bn, y, q, p)) < 0)
        goto fail;

    ret = FUNC0(EINVAL);
    if (FUNC2(bn))
        goto fail;

    ret = 0;
fail:
    FUNC4(bn);

    return ret;
}