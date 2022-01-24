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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  esp_secure_boot_sig_block_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  bootloader_sha256_handle_t ;

/* Variables and functions */
 int DIGEST_LEN ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ MMAP_ALIGNED_MASK ; 
 scalar_t__ SPI_FLASH_MMU_PAGE_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

esp_err_t FUNC10(uint32_t src_addr, uint32_t length)
{
    uint8_t digest[DIGEST_LEN];
    const uint8_t *data;
    const esp_secure_boot_sig_block_t *sigblock;

    FUNC0(TAG, "verifying signature src_addr 0x%x length 0x%x", src_addr, length);

    bootloader_sha256_handle_t handle = FUNC8();

    uint32_t free_page_count = FUNC4();
    FUNC0(TAG, "free data page_count 0x%08x", free_page_count);

    int32_t data_len_remain = length;
    uint32_t data_addr = src_addr;
    while (data_len_remain > 0) {
        uint32_t offset_page = ((data_addr & MMAP_ALIGNED_MASK) != 0) ? 1 : 0;
        /* Data we could map in case we are not aligned to PAGE boundary is one page size lesser. */
        uint32_t data_len = FUNC2(data_len_remain, ((free_page_count - offset_page) * SPI_FLASH_MMU_PAGE_SIZE));
        data = (const uint8_t *) FUNC3(data_addr, data_len);
        if(!data) {
            FUNC1(TAG, "bootloader_mmap(0x%x, 0x%x) failed", data_addr, data_len);
            FUNC7(handle, NULL);
            return ESP_FAIL;
        }
        FUNC6(handle, data, data_len);
        FUNC5(data);

        data_addr += data_len;
        data_len_remain -= data_len;
    }

    /* Done! Get the digest */
    FUNC7(handle, digest);

    // Map the signature block
    sigblock = (const esp_secure_boot_sig_block_t *) FUNC3(src_addr + length, sizeof(esp_secure_boot_sig_block_t));
    if(!sigblock) {
        FUNC1(TAG, "bootloader_mmap(0x%x, 0x%x) failed", src_addr + length, sizeof(esp_secure_boot_sig_block_t));
        return ESP_FAIL;
    }
    // Verify the signature
    esp_err_t err = FUNC9(sigblock, digest);
    // Unmap
    FUNC5(sigblock);

    return err;
}