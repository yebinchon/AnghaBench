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
typedef  int /*<<< orphan*/  AVHMAC ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_HMAC_SHA256 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC6(const uint8_t *src, int len, int gap,
                        const uint8_t *key, int keylen, uint8_t *dst)
{
    AVHMAC *hmac;

    hmac = FUNC1(AV_HMAC_SHA256);
    if (!hmac)
        return FUNC0(ENOMEM);

    FUNC4(hmac, key, keylen);
    if (gap <= 0) {
        FUNC5(hmac, src, len);
    } else { //skip 32 bytes used for storing digest
        FUNC5(hmac, src, gap);
        FUNC5(hmac, src + gap + 32, len - gap - 32);
    }
    FUNC2(hmac, dst, 32);

    FUNC3(hmac);

    return 0;
}