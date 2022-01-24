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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  ets_secure_boot_signature_t ;
typedef  int /*<<< orphan*/  ets_secure_boot_key_digests_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_IMAGE_INVALID ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

esp_err_t FUNC7(uint32_t sig_block_flash_offs, const uint8_t *image_digest)
{
    ets_secure_boot_key_digests_t trusted_keys;

    FUNC2(sig_block_flash_offs % 4096 == 0); // TODO: enforce this in a better way

    const ets_secure_boot_signature_t *sig = FUNC3(sig_block_flash_offs, sizeof(ets_secure_boot_signature_t));

    if (sig == NULL) {
        FUNC1(TAG, "Failed to mmap data at offset 0x%x", sig_block_flash_offs);
        return ESP_FAIL;
    }

    int r = FUNC5(&trusted_keys);
    if (r != 0) {
        FUNC1(TAG, "No trusted key digests were found in efuse!");
    } else {
        FUNC0(TAG, "Verifying with RSA-PSS...");
        // TODO: calling this function in IDF app context is unsafe
        r = FUNC6(sig, image_digest, &trusted_keys);
    }

    FUNC4(sig);

    return (r == 0) ? ESP_OK : ESP_ERR_IMAGE_INVALID;
}