#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  large_const_buffer ;
struct TYPE_10__ {int host_id; void* speed; void* io_mode; } ;
typedef  TYPE_1__ flashtest_config_t ;
struct TYPE_11__ {scalar_t__ size; } ;
typedef  TYPE_2__ esp_partition_t ;
typedef  int /*<<< orphan*/  esp_flash_t ;
typedef  scalar_t__ esp_flash_speed_t ;
typedef  scalar_t__ esp_flash_io_mode_t ;

/* Variables and functions */
 scalar_t__ ESP_FLASH_SPEED_MAX ; 
 void* ESP_FLASH_SPEED_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ SPI_FLASH_READ_MODE_MAX ; 
 void* SPI_FLASH_READ_MODE_MIN ; 
 scalar_t__ SPI_FLASH_SEC_SIZE ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__ const*,int /*<<< orphan*/ *,int const) ; 

void FUNC13(flashtest_config_t* config)
{
    //replace config pointer with pointer to internal temporary config
    flashtest_config_t temp_cfg;
    FUNC6(&temp_cfg, config, sizeof(flashtest_config_t));
    flashtest_config_t* cfg = &temp_cfg;
    esp_flash_t* chip;

    const int length = sizeof(large_const_buffer);
    uint8_t *source_buf = FUNC5(length);
    FUNC2(source_buf);
    FUNC10(778);
    for (int i = 0; i < length; i++) {
        source_buf[i] = FUNC7();
    }

    const esp_partition_t *part = FUNC4();
    FUNC1(part->size > length + 2 + SPI_FLASH_SEC_SIZE);

    //write data to be read, and use the lowest speed to write and read to make sure success
    cfg->io_mode = SPI_FLASH_READ_MODE_MIN;
    cfg->speed = ESP_FLASH_SPEED_MIN;
    FUNC9(cfg, &chip);
    FUNC12(chip, part, source_buf, length);
    FUNC8(chip, part, source_buf, length);
    FUNC11(chip, cfg->host_id);


    if (config->host_id != -1) {
        esp_flash_speed_t speed = ESP_FLASH_SPEED_MIN;
        while (speed != ESP_FLASH_SPEED_MAX) {
            //test io_mode in the inner loop to test QE set/clear function, since
            //the io mode will switch frequently.
            esp_flash_io_mode_t io_mode = SPI_FLASH_READ_MODE_MIN;
            while (io_mode != SPI_FLASH_READ_MODE_MAX) {
                FUNC0(TAG, "test flash io mode: %d, speed: %d", io_mode, speed);
                cfg->io_mode = io_mode;
                cfg->speed = speed;
                FUNC9(cfg, &chip);
                FUNC8(chip, part, source_buf, length);
                FUNC11(chip, cfg->host_id);
                io_mode++;
            }
            speed++;
        }
    } else {
        //test main flash
        FUNC12(NULL, part, source_buf, length);
        FUNC8(NULL, part, source_buf, length);
    }

    FUNC3(source_buf);
}