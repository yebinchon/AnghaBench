#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int quadwp_io_num; int quadhd_io_num; int /*<<< orphan*/  sclk_io_num; int /*<<< orphan*/  miso_io_num; int /*<<< orphan*/  mosi_io_num; } ;
typedef  TYPE_1__ spi_bus_config_t ;
struct TYPE_11__ {int size; } ;
typedef  TYPE_2__ esp_flash_t ;
struct TYPE_12__ {int /*<<< orphan*/  cs_io_num; int /*<<< orphan*/  speed; int /*<<< orphan*/  io_mode; int /*<<< orphan*/  cs_id; int /*<<< orphan*/  host_id; } ;
typedef  TYPE_3__ esp_flash_spi_device_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_FLASH_40MHZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  SPI_FLASH_DIO ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  VSPI_HOST ; 
 int /*<<< orphan*/  VSPI_IOMUX_PIN_NUM_CLK ; 
 int /*<<< orphan*/  VSPI_IOMUX_PIN_NUM_CS ; 
 int /*<<< orphan*/  VSPI_IOMUX_PIN_NUM_MISO ; 
 int /*<<< orphan*/  VSPI_IOMUX_PIN_NUM_MOSI ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__ const*,int) ; 

__attribute__((used)) static esp_flash_t* FUNC8(void)
{
    const spi_bus_config_t bus_config = {
        .mosi_io_num = VSPI_IOMUX_PIN_NUM_MOSI,
        .miso_io_num = VSPI_IOMUX_PIN_NUM_MISO,
        .sclk_io_num = VSPI_IOMUX_PIN_NUM_CLK,
        .quadwp_io_num = -1,
        .quadhd_io_num = -1,
    };

    const esp_flash_spi_device_config_t device_config = {
        .host_id = VSPI_HOST,
        .cs_id = 0,
        .cs_io_num = VSPI_IOMUX_PIN_NUM_CS,
        .io_mode = SPI_FLASH_DIO,
        .speed = ESP_FLASH_40MHZ
    };

    FUNC2(TAG, "Initializing external SPI Flash");
    FUNC2(TAG, "Pin assignments:");
    FUNC2(TAG, "MOSI: %2d   MISO: %2d   SCLK: %2d   CS: %2d",
        bus_config.mosi_io_num, bus_config.miso_io_num,
        bus_config.sclk_io_num, device_config.cs_io_num
    );

    // Initialize the SPI bus
    FUNC0(FUNC7(VSPI_HOST, &bus_config, 1));

    // Add device to the SPI bus
    esp_flash_t* ext_flash;
    FUNC0(FUNC6(&ext_flash, &device_config));

    // Probe the Flash chip and initialize it
    esp_err_t err = FUNC4(ext_flash);
    if (err != ESP_OK) {
        FUNC1(TAG, "Failed to initialize external Flash: %s (0x%x)", FUNC3(err), err);
        return NULL;
    }

    // Print out the ID and size
    uint32_t id;
    FUNC0(FUNC5(ext_flash, &id));
    FUNC2(TAG, "Initialized external Flash, size=%d KB, ID=0x%x", ext_flash->size / 1024, id);

    return ext_flash;
}