#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  gpio_int; int /*<<< orphan*/  gpio_cs; int /*<<< orphan*/  gpio_sck; int /*<<< orphan*/  gpio_mosi; int /*<<< orphan*/  gpio_miso; } ;
typedef  TYPE_1__ sdspi_slot_config_t ;
typedef  int /*<<< orphan*/  sdmmc_slot_config_t ;
struct TYPE_9__ {int /*<<< orphan*/  max_freq_khz; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ sdmmc_host_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;
typedef  int /*<<< orphan*/  esp_slave_context_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HSPI_HOST ; 
 int /*<<< orphan*/  SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_CLK ; 
 int /*<<< orphan*/  SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_CMD ; 
 int /*<<< orphan*/  SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D0 ; 
 int /*<<< orphan*/  SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D1 ; 
 int /*<<< orphan*/  SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D3 ; 
 int /*<<< orphan*/  SDMMC_FREQ_DEFAULT ; 
 int /*<<< orphan*/  SDMMC_FREQ_HIGHSPEED ; 
 TYPE_2__ FUNC4 () ; 
 int /*<<< orphan*/  SDMMC_HOST_FLAG_1BIT ; 
 int /*<<< orphan*/  SDMMC_HOST_FLAG_4BIT ; 
 int /*<<< orphan*/  SDMMC_HOST_SLOT_1 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__ FUNC6 () ; 
 TYPE_1__ FUNC7 () ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

esp_err_t FUNC22(esp_slave_context_t *context)
{
    esp_err_t err;
    /* Probe */
#ifndef CONFIG_EXAMPLE_SDIO_OVER_SPI
    sdmmc_host_t config = FUNC4();
#ifdef CONFIG_EXAMPLE_SDIO_4BIT
    ESP_LOGI(TAG, "Probe using SD 4-bit...\n");
    config.flags = SDMMC_HOST_FLAG_4BIT;
#else
    FUNC1(TAG, "Probe using SD 1-bit...\n");
    config.flags = SDMMC_HOST_FLAG_1BIT;
#endif

#ifdef CONFIG_EXAMPLE_SDIO_HIGHSPEED
    config.max_freq_khz = SDMMC_FREQ_HIGHSPEED;
#else
    config.max_freq_khz = SDMMC_FREQ_DEFAULT;
#endif

    sdmmc_slot_config_t slot_config = FUNC5();
    /* Note: For small devkits there may be no pullups on the board.
       This enables the internal pullups to help evaluate the driver quickly.
       However the internal pullups are not sufficient and not reliable,
       please make sure external pullups are connected to the bus in your
       real design.
    */
    //slot_config.flags = SDMMC_SLOT_FLAG_INTERNAL_PULLUP;
    err = FUNC17();
    FUNC0(err);

    err = FUNC18(SDMMC_HOST_SLOT_1, &slot_config);
    FUNC0(err);
#else   //over SPI
    sdmmc_host_t config = SDSPI_HOST_DEFAULT();

    sdspi_slot_config_t slot_config = SDSPI_SLOT_CONFIG_DEFAULT();
    slot_config.gpio_miso = SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D0;
    slot_config.gpio_mosi = SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_CMD;
    slot_config.gpio_sck  = SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_CLK;
    slot_config.gpio_cs   = SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D3;
    slot_config.gpio_int = SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D1;

    err = gpio_install_isr_service(0);
    ESP_ERROR_CHECK(err);
    err = sdspi_host_init();
    ESP_ERROR_CHECK(err);

    err = sdspi_host_init_slot(HSPI_HOST, &slot_config);
    ESP_ERROR_CHECK(err);
    ESP_LOGI(TAG, "Probe using SPI...\n");

    //we have to pull up all the slave pins even when the pin is not used
    gpio_d2_set_high();
#endif  //over SPI
    sdmmc_card_t *card = (sdmmc_card_t *)FUNC13(sizeof(sdmmc_card_t));
    if (card == NULL) {
        return ESP_ERR_NO_MEM;
    }
    for (;;) {
        if (FUNC15(&config, card) == ESP_OK) {
            break;
        }
        FUNC2(TAG, "slave init failed, retry...");
        FUNC21(1000 / portTICK_PERIOD_MS);
    }
    FUNC16(stdout, card);

    FUNC12(14);
    FUNC11(14);
    FUNC12(15);
    FUNC11(15);
    FUNC12(2);
    FUNC11(2);
    FUNC12(4);
    FUNC11(4);
    FUNC12(12);
    FUNC11(12);
    FUNC12(13);
    FUNC11(13);

    *context = FUNC3(card);
    esp_err_t ret = FUNC8(context);
    FUNC0(ret);

    ret = FUNC14(card);
    FUNC0(ret);
    return ret;
}