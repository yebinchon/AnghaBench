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
typedef  scalar_t__ esp_image_type ;
struct TYPE_3__ {int /*<<< orphan*/  min_chip_rev; int /*<<< orphan*/  chip_id; } ;
typedef  TYPE_1__ esp_image_header_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  esp_chip_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IDF_FIRMWARE_CHIP_ID ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 scalar_t__ ESP_IMAGE_BOOTLOADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 () ; 

esp_err_t FUNC3(const esp_image_header_t* img_hdr, esp_image_type type)
{
    esp_err_t err = ESP_OK;
    esp_chip_id_t chip_id = CONFIG_IDF_FIRMWARE_CHIP_ID;
    if (chip_id != img_hdr->chip_id) {
        FUNC0(TAG, "mismatch chip ID, expected %d, found %d", chip_id, img_hdr->chip_id);
        err = ESP_FAIL;
    }
    uint8_t revision = FUNC2();
    if (revision < img_hdr->min_chip_rev) {
        FUNC0(TAG, "can't run on lower chip revision, expected %d, found %d", revision, img_hdr->min_chip_rev);
        err = ESP_FAIL;
    } else if (revision != img_hdr->min_chip_rev) {
        FUNC1(TAG, "chip revision: %d, min. %s chip revision: %d", revision, type == ESP_IMAGE_BOOTLOADER ? "bootloader" : "application", img_hdr->min_chip_rev);
    }
    return err;
}