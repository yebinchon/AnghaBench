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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_BOOTLOADER_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static esp_err_t FUNC6(void)
{
    esp_err_t err;
    uint32_t image_length;
    /* Check for plaintext bootloader (verification will fail if it's already encrypted) */
    if (FUNC4(&image_length) == ESP_OK) {
        FUNC0(TAG, "bootloader is plaintext. Encrypting...");
        err = FUNC3(ESP_BOOTLOADER_OFFSET, image_length);
        if (err != ESP_OK) {
            FUNC1(TAG, "Failed to encrypt bootloader in place: 0x%x", err);
            return err;
        }

        if (FUNC5()) {
            // TODO: anything different for secure boot?
        }
    }
    else {
        FUNC2(TAG, "no valid bootloader was found");
    }

    return ESP_OK;
}