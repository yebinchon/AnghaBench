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

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MODE_OUTPUT ; 
 int SD_TEST_BOARD_PWR_ON_DELAY_MS ; 
 int SD_TEST_BOARD_PWR_RST_DELAY_MS ; 
 int SD_TEST_BOARD_VSEL_3V3 ; 
 int /*<<< orphan*/  SD_TEST_BOARD_VSEL_EN_GPIO ; 
 int /*<<< orphan*/  SD_TEST_BOARD_VSEL_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
    FUNC0(SD_TEST_BOARD_VSEL_GPIO, GPIO_MODE_OUTPUT);
    FUNC1(SD_TEST_BOARD_VSEL_GPIO, SD_TEST_BOARD_VSEL_3V3);
    FUNC0(SD_TEST_BOARD_VSEL_EN_GPIO, GPIO_MODE_OUTPUT);
    FUNC1(SD_TEST_BOARD_VSEL_EN_GPIO, 0);
    FUNC2(SD_TEST_BOARD_PWR_RST_DELAY_MS * 1000);
    FUNC1(SD_TEST_BOARD_VSEL_EN_GPIO, 1);
    FUNC2(SD_TEST_BOARD_PWR_ON_DELAY_MS * 1000);
}