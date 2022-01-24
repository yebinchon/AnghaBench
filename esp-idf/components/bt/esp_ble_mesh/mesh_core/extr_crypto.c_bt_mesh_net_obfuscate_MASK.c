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
typedef  int u8_t ;
typedef  int /*<<< orphan*/  u32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int const*,int) ; 
 int FUNC2 (int const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 

int FUNC5(u8_t *pdu, u32_t iv_index,
                          const u8_t privacy_key[16])
{
    u8_t priv_rand[16] = { 0x00, 0x00, 0x00, 0x00, 0x00, };
    u8_t tmp[16];
    int err, i;

    FUNC0("IVIndex %u, PrivacyKey %s", iv_index, FUNC1(privacy_key, 16));

    FUNC4(iv_index, &priv_rand[5]);
    FUNC3(&priv_rand[9], &pdu[7], 7);

    FUNC0("PrivacyRandom %s", FUNC1(priv_rand, 16));

    err = FUNC2(privacy_key, priv_rand, tmp);
    if (err) {
        return err;
    }

    for (i = 0; i < 6; i++) {
        pdu[1 + i] ^= tmp[i];
    }

    return 0;
}