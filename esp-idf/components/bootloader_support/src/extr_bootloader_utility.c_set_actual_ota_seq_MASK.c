#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  otadata ;
typedef  int /*<<< orphan*/  esp_partition_pos_t ;
struct TYPE_10__ {int ota_seq; int /*<<< orphan*/  crc; int /*<<< orphan*/  ota_state; } ;
typedef  TYPE_2__ esp_ota_select_entry_t ;
struct TYPE_9__ {scalar_t__ offset; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ota; TYPE_1__ ota_info; } ;
typedef  TYPE_3__ bootloader_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ESP_OTA_IMG_VALID ; 
 int FACTORY_INDEX ; 
 int FLASH_SECTOR_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int) ; 
 int ota_has_initial_contents ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC8(const bootloader_state_t *bs, int index)
{
    if (index > FACTORY_INDEX && ota_has_initial_contents == true) {
        esp_ota_select_entry_t otadata;
        FUNC5(&otadata, 0xFF, sizeof(otadata));
        otadata.ota_seq = index + 1;
        otadata.ota_state = ESP_OTA_IMG_VALID;
        otadata.crc = FUNC1(&otadata);

        bool write_encrypted = FUNC3();
        FUNC7(&otadata, bs->ota_info.offset + FLASH_SECTOR_SIZE * 0, write_encrypted);
        FUNC0(TAG, "Set actual ota_seq=%d in otadata[0]", otadata.ota_seq);
#ifdef CONFIG_BOOTLOADER_APP_ANTI_ROLLBACK
        update_anti_rollback(&bs->ota[index]);
#endif
    }
#if defined( CONFIG_BOOTLOADER_SKIP_VALIDATE_IN_DEEP_SLEEP ) || defined( CONFIG_BOOTLOADER_CUSTOM_RESERVE_RTC )
    esp_partition_pos_t partition = index_to_partition(bs, index);
    bootloader_common_update_rtc_retain_mem(&partition, true);
#endif
}