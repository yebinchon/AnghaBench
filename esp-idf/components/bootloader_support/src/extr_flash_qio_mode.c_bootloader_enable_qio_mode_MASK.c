#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_5__ {scalar_t__ mfg_id; int id_mask; int flash_id; int /*<<< orphan*/  status_qio_bit; int /*<<< orphan*/  write_status_fn; int /*<<< orphan*/  read_status_fn; int /*<<< orphan*/  manufacturer; } ;
typedef  TYPE_1__ qio_info_t ;
struct TYPE_6__ {int device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FLASH_WRAP_MODE_DISABLE ; 
 int NUM_CHIPS ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_1__* chip_data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__ g_rom_flashchip ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
    uint32_t raw_flash_id;
    uint8_t mfg_id;
    uint16_t flash_id;
    int i;

    FUNC0(TAG, "Probing for QIO mode enable...");
    FUNC3(&g_rom_flashchip);

    raw_flash_id = g_rom_flashchip.device_id;
    FUNC0(TAG, "Raw SPI flash chip id 0x%x", raw_flash_id);

    mfg_id = (raw_flash_id >> 16) & 0xFF;
    flash_id = raw_flash_id & 0xFFFF;
    FUNC0(TAG, "Manufacturer ID 0x%02x chip ID 0x%04x", mfg_id, flash_id);

    for (i = 0; i < NUM_CHIPS - 1; i++) {
        const qio_info_t *chip = &chip_data[i];
        if (mfg_id == chip->mfg_id && (flash_id & chip->id_mask) == (chip->flash_id & chip->id_mask)) {
            FUNC1(TAG, "Enabling QIO for flash chip %s", chip_data[i].manufacturer);
            break;
        }
    }

    if (i == NUM_CHIPS - 1) {
        FUNC1(TAG, "Enabling default flash chip QIO");
    }
#if CONFIG_IDF_TARGET_ESP32S2BETA
    spi_flash_wrap_set(FLASH_WRAP_MODE_DISABLE);
#endif
    FUNC2(chip_data[i].read_status_fn,
                    chip_data[i].write_status_fn,
                    chip_data[i].status_qio_bit);
}