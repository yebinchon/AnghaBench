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
typedef  int /*<<< orphan*/  esp_secure_boot_sig_block_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int DIGEST_LEN ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

esp_err_t FUNC6(uint32_t src_addr, uint32_t length)
{
    uint8_t digest[DIGEST_LEN];
    const uint8_t *data;
    const esp_secure_boot_sig_block_t *sigblock;

    FUNC0(TAG, "verifying signature src_addr 0x%x length 0x%x", src_addr, length);

    data = FUNC2(src_addr, length + sizeof(esp_secure_boot_sig_block_t));
    if (data == NULL) {
        FUNC1(TAG, "bootloader_mmap(0x%x, 0x%x) failed", src_addr, length + sizeof(esp_secure_boot_sig_block_t));
        return ESP_FAIL;
    }

    // Calculate digest of main image
    FUNC5(data, length, digest, 0);

    // Map the signature block and verify the signature
    sigblock = (const esp_secure_boot_sig_block_t *)(data + length);
    esp_err_t err = FUNC4(sigblock, digest);
    FUNC3(data);
    return err;
}