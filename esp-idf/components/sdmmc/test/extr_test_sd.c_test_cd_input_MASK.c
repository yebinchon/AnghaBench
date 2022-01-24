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
typedef  int /*<<< orphan*/  sdmmc_host_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  GPIO_ENABLE_W1TS_REG ; 
 int /*<<< orphan*/  GPIO_OUT_W1TC_REG ; 
 int /*<<< orphan*/  GPIO_OUT_W1TS_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG_GPIO_OUT_IDX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(int gpio_cd_num, const sdmmc_host_t* config)
{
    sdmmc_card_t* card = FUNC7(sizeof(sdmmc_card_t));
    FUNC2(card);

    // SDMMC host should have configured CD as input.
    // Enable output as well (not using the driver, to avoid touching input
    // enable bits).
    FUNC6(gpio_cd_num, SIG_GPIO_OUT_IDX, false, false);
    FUNC1(GPIO_ENABLE_W1TS_REG, FUNC0(gpio_cd_num));

    // Check that card initialization fails if CD is high
    FUNC1(GPIO_OUT_W1TS_REG, FUNC0(gpio_cd_num));
    FUNC9(1000);
    FUNC3(ESP_ERR_NOT_FOUND, FUNC8(config, card));

    // Check that card initialization succeeds if CD is low
    FUNC1(GPIO_OUT_W1TC_REG, FUNC0(gpio_cd_num));
    FUNC9(1000);
    FUNC4(FUNC8(config, card));

    FUNC5(card);
}