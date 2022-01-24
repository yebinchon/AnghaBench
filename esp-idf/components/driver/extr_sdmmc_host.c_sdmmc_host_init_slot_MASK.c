#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {int width; int /*<<< orphan*/  write_protect; int /*<<< orphan*/  card_detect; int /*<<< orphan*/  card_int; int /*<<< orphan*/  d7_gpio; int /*<<< orphan*/  d6_gpio; int /*<<< orphan*/  d5_gpio; int /*<<< orphan*/  d4_gpio; int /*<<< orphan*/  d3_gpio; int /*<<< orphan*/  d2_gpio; int /*<<< orphan*/  d1_gpio; int /*<<< orphan*/  d0_gpio; int /*<<< orphan*/  cmd_gpio; int /*<<< orphan*/  clk_gpio; } ;
typedef  TYPE_1__ sdmmc_slot_info_t ;
struct TYPE_8__ {int flags; int width; int gpio_cd; int gpio_wp; } ;
typedef  TYPE_2__ sdmmc_slot_config_t ;
struct TYPE_9__ {int /*<<< orphan*/  intr_type; int /*<<< orphan*/  pull_down_en; int /*<<< orphan*/  pull_up_en; int /*<<< orphan*/  mode; int /*<<< orphan*/  pin_bit_mask; } ;
typedef  TYPE_3__ gpio_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ ESP_OK ; 
 int GPIO_FUNC_IN_HIGH ; 
 int GPIO_FUNC_IN_LOW ; 
 int /*<<< orphan*/  GPIO_INTR_DISABLE ; 
 int /*<<< orphan*/  GPIO_MODE_INPUT ; 
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int SDMMC_SLOT_FLAG_INTERNAL_PULLUP ; 
 int SDMMC_SLOT_NO_CD ; 
 int SDMMC_SLOT_NO_WP ; 
 int SDMMC_SLOT_WIDTH_DEFAULT ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  s_intr_handle ; 
 int* s_slot_width ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (int,int) ; 
 scalar_t__ FUNC10 (int,int) ; 
 TYPE_1__* sdmmc_slot_info ; 

esp_err_t FUNC11(int slot, const sdmmc_slot_config_t* slot_config)
{
    bool pullup = slot_config->flags & SDMMC_SLOT_FLAG_INTERNAL_PULLUP;
    if (pullup) {
        FUNC8(slot, slot_config->width);
    }
    if (!s_intr_handle) {
        return ESP_ERR_INVALID_STATE;
    }
    if (!(slot == 0 || slot == 1)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (slot_config == NULL) {
        return ESP_ERR_INVALID_ARG;
    }
    int gpio_cd = slot_config->gpio_cd;
    int gpio_wp = slot_config->gpio_wp;
    uint8_t slot_width = slot_config->width;

    // Configure pins
    const sdmmc_slot_info_t* pslot = &sdmmc_slot_info[slot];

    if (slot_width == SDMMC_SLOT_WIDTH_DEFAULT) {
        slot_width = pslot->width;
    }
    else if (slot_width > pslot->width) {
        return ESP_ERR_INVALID_ARG;
    }
    s_slot_width[slot] = slot_width;

    FUNC2(pslot->clk_gpio);
    FUNC2(pslot->cmd_gpio);
    FUNC2(pslot->d0_gpio);

    if (slot_width >= 4) {
        FUNC2(pslot->d1_gpio);
        FUNC2(pslot->d2_gpio);
        // Force D3 high to make slave enter SD mode.
        // Connect to peripheral after width configuration.
        gpio_config_t gpio_conf = {
            .pin_bit_mask = FUNC0(pslot->d3_gpio),
            .mode = GPIO_MODE_OUTPUT ,
            .pull_up_en = 0,
            .pull_down_en = 0,
            .intr_type = GPIO_INTR_DISABLE,
        };
        FUNC3(&gpio_conf);
        FUNC7(pslot->d3_gpio, 1);
        if (slot_width == 8) {
            FUNC2(pslot->d4_gpio);
            FUNC2(pslot->d5_gpio);
            FUNC2(pslot->d6_gpio);
            FUNC2(pslot->d7_gpio);
        }
    }

    // SDIO slave interrupt is edge sensitive to ~(int_n | card_int | card_detect)
    // set this and card_detect to high to enable sdio interrupt
    FUNC4(GPIO_FUNC_IN_HIGH, pslot->card_int, false);

    // Set up Card Detect input
    int matrix_in_cd;
    if (gpio_cd != SDMMC_SLOT_NO_CD) {
        FUNC1(TAG, "using GPIO%d as CD pin", gpio_cd);
        FUNC5(gpio_cd);
        FUNC6(gpio_cd, GPIO_MODE_INPUT);
        matrix_in_cd = gpio_cd;
    } else {
        // if not set, default to CD low (card present)
        matrix_in_cd = GPIO_FUNC_IN_LOW;
    }
    FUNC4(matrix_in_cd, pslot->card_detect, false);

    // Set up Write Protect input
    int matrix_in_wp;
    if (gpio_wp != SDMMC_SLOT_NO_WP) {
        FUNC1(TAG, "using GPIO%d as WP pin", gpio_wp);
        FUNC5(gpio_wp);
        FUNC6(gpio_wp, GPIO_MODE_INPUT);
        matrix_in_wp = gpio_wp;
    } else {
        // if not set, default to WP high (not write protected)
        matrix_in_wp = GPIO_FUNC_IN_HIGH;
    }
    // WP signal is normally active low, but hardware expects
    // an active-high signal, so invert it in GPIO matrix
    FUNC4(matrix_in_wp, pslot->write_protect, true);

    // By default, set probing frequency (400kHz) and 1-bit bus
    esp_err_t ret = FUNC10(slot, 400);
    if (ret != ESP_OK) {
        return ret;
    }
    ret = FUNC9(slot, 1);
    if (ret != ESP_OK) {
        return ret;
    }
    return ESP_OK;
}