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
typedef  int /*<<< orphan*/  sdmmc_host_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  GPIO_ENABLE_W1TS_REG ; 
 int /*<<< orphan*/  GPIO_OUT_W1TC_REG ; 
 int /*<<< orphan*/  GPIO_OUT_W1TS_REG ; 
 int /*<<< orphan*/  MALLOC_CAP_DMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG_GPIO_OUT_IDX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(int gpio_wp_num, const sdmmc_host_t* config)
{
    sdmmc_card_t* card = FUNC8(sizeof(sdmmc_card_t));
    FUNC2(card);

    // SDMMC host should have configured WP as input.
    // Enable output as well (not using the driver, to avoid touching input
    // enable bits).
    FUNC6(gpio_wp_num, SIG_GPIO_OUT_IDX, false, false);
    FUNC1(GPIO_ENABLE_W1TS_REG, FUNC0(gpio_wp_num));

    // Check that the card can be initialized with WP low
    FUNC1(GPIO_OUT_W1TC_REG, FUNC0(gpio_wp_num));
    FUNC4(FUNC9(config, card));

    uint32_t* data = FUNC7(1, 512, MALLOC_CAP_DMA);

    // Check that card write succeeds if WP is high
    FUNC1(GPIO_OUT_W1TS_REG, FUNC0(gpio_wp_num));
    FUNC12(1000);
    FUNC4(FUNC11(card, &data, 0, 1));

    // Check that write fails if WP is low
    FUNC1(GPIO_OUT_W1TC_REG, FUNC0(gpio_wp_num));
    FUNC12(1000);
    FUNC3(ESP_ERR_INVALID_STATE, FUNC11(card, &data, 0, 1));
    // ...but reads still work
    FUNC4(FUNC10(card, &data, 0, 1));

    FUNC5(data);
    FUNC5(card);
}