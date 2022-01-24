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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ digest; scalar_t__ iv; } ;
typedef  TYPE_1__ esp_secure_boot_iv_digest_t ;
typedef  int esp_err_t ;
typedef  int /*<<< orphan*/  digest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_BOOTLOADER_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int ESP_OK ; 
 int /*<<< orphan*/  FLASH_OFFS_SECURE_BOOT_IV_DIGEST ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int const*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static bool FUNC14(uint32_t image_len){
    esp_err_t err;
    esp_secure_boot_iv_digest_t digest;
    const uint32_t *image;

    /* hardware secure boot engine only takes full blocks, so round up the
       image length. The additional data should all be 0xFF (or the appended SHA, if it falls in the same block).
    */
    if (image_len % sizeof(digest.iv) != 0) {
        image_len = (image_len / sizeof(digest.iv) + 1) * sizeof(digest.iv);
    }
    FUNC13();
    FUNC12((uint32_t *)digest.iv);
    FUNC9(NULL);
    /* iv stored in sec 0 */
    err = FUNC3(0);
    if (err != ESP_OK)
    {
        FUNC2(TAG, "SPI erase failed: 0x%x", err);
        return false;
    }

    /* generate digest from image contents */
    image = FUNC5(ESP_BOOTLOADER_OFFSET, image_len);
    if (!image) {
        FUNC2(TAG, "bootloader_mmap(0x1000, 0x%x) failed", image_len);
        return false;
    }
    for (int i = 0; i < image_len; i+= sizeof(digest.iv)) {
        FUNC9(&image[i/sizeof(uint32_t)]);
    }
    FUNC6(image);

    FUNC10();
    FUNC11((uint32_t *)digest.digest);
    FUNC8();

    FUNC1(TAG, "write iv+digest to flash");
    err = FUNC4(FLASH_OFFS_SECURE_BOOT_IV_DIGEST, &digest,
                           sizeof(digest), FUNC7());
    if (err != ESP_OK) {
        FUNC2(TAG, "SPI write failed: 0x%x", err);
        return false;
    }
    FUNC0(0);
    return true;
}