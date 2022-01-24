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
typedef  int /*<<< orphan*/  const u8_t ;
struct tc_aes_key_sched_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int EINVAL ; 
 scalar_t__ TC_CRYPTO_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (struct tc_aes_key_sched_struct*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct tc_aes_key_sched_struct*) ; 

int FUNC5(const u8_t key[16], const u8_t plaintext[16],
                       u8_t enc_data[16])
{
#if CONFIG_MBEDTLS_HARDWARE_AES
    BT_DBG("key %s plaintext %s", bt_hex(key, 16), bt_hex(plaintext, 16));

    ecb_encrypt_be(key, plaintext, enc_data);

    BT_DBG("enc_data %s", bt_hex(enc_data, 16));

    return 0;
#else /* CONFIG_MBEDTLS_HARDWARE_AES */
    struct tc_aes_key_sched_struct s;

    FUNC0("key %s plaintext %s", FUNC1(key, 16), FUNC1(plaintext, 16));

    if (FUNC3(&s, key) == TC_CRYPTO_FAIL) {
        return -EINVAL;
    }

    if (FUNC4(enc_data, plaintext, &s) == TC_CRYPTO_FAIL) {
        return -EINVAL;
    }

    FUNC0("enc_data %s", FUNC1(enc_data, 16));

    return 0;
#endif /* CONFIG_MBEDTLS_HARDWARE_AES */
}