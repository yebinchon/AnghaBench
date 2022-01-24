#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  p; int /*<<< orphan*/  priv_key; } ;
typedef  TYPE_1__ FF_DH ;
typedef  int /*<<< orphan*/  FFBigNum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(FF_DH *dh, FFBigNum pub_key_bn,
                          uint32_t secret_key_len, uint8_t *secret_key)
{
    FFBigNum k;
    int ret;

    FUNC3(k);
    if (!k)
        return -1;

    if ((ret = FUNC2(k, pub_key_bn, dh->priv_key, dh->p)) < 0) {
        FUNC1(k);
        return ret;
    }
    FUNC0(k, secret_key, secret_key_len);
    FUNC1(k);

    /* return the length of the shared secret key like DH_compute_key */
    return secret_key_len;
}