#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct ets_secure_boot_sig_block {int dummy; } ;
typedef  int /*<<< orphan*/  ets_secure_boot_signature_t ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ets_secure_boot_key_digests_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  bootloader_sha256_handle_t ;

/* Variables and functions */
 int DIGEST_LEN ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int ETS_OK ; 
 int /*<<< orphan*/  SHA2_256 ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,TYPE_1__*) ; 

esp_err_t FUNC10(uint32_t src_addr, uint32_t length)
{
    ets_secure_boot_key_digests_t trusted_keys = { 0 };
    uint8_t digest[DIGEST_LEN];
    const uint8_t *data;

    FUNC0(TAG, "verifying signature src_addr 0x%x length 0x%x", src_addr, length);

    if ((src_addr + length) % 4096 != 0) {
        FUNC1(TAG, "addr 0x%x length 0x%x doesn't end on a sector boundary", src_addr, length);
        return ESP_ERR_INVALID_ARG;
    }

    data = FUNC2(src_addr, length + sizeof(struct ets_secure_boot_sig_block));
    if(data == NULL) {
        FUNC1(TAG, "bootloader_mmap(0x%x, 0x%x) failed", src_addr, length+sizeof(ets_secure_boot_signature_t));
        return ESP_FAIL;
    }

    // Calculate digest of main image
#ifdef BOOTLOADER_BUILD
    bootloader_sha256_handle_t handle = bootloader_sha256_start();
    bootloader_sha256_data(handle, data, length);
    bootloader_sha256_finish(handle, digest);
#else
    /* Use thread-safe esp-idf SHA function */
    FUNC7(SHA2_256, data, length, digest);
#endif

    int r = FUNC8(&trusted_keys);

    if (r == ETS_OK) {
        const ets_secure_boot_signature_t *sig = (const ets_secure_boot_signature_t *)(data + length);
        // TODO: calling this function in IDF app context is unsafe
        r = FUNC9(sig, digest, &trusted_keys);
    }
    FUNC3(data);

    return (r == ETS_OK) ? ESP_OK : ESP_FAIL;
}