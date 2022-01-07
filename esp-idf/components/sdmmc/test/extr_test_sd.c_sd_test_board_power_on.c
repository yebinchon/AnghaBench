
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_MODE_OUTPUT ;
 int SD_TEST_BOARD_PWR_ON_DELAY_MS ;
 int SD_TEST_BOARD_PWR_RST_DELAY_MS ;
 int SD_TEST_BOARD_VSEL_3V3 ;
 int SD_TEST_BOARD_VSEL_EN_GPIO ;
 int SD_TEST_BOARD_VSEL_GPIO ;
 int gpio_set_direction (int ,int ) ;
 int gpio_set_level (int ,int) ;
 int usleep (int) ;

__attribute__((used)) static void sd_test_board_power_on(void)
{
    gpio_set_direction(SD_TEST_BOARD_VSEL_GPIO, GPIO_MODE_OUTPUT);
    gpio_set_level(SD_TEST_BOARD_VSEL_GPIO, SD_TEST_BOARD_VSEL_3V3);
    gpio_set_direction(SD_TEST_BOARD_VSEL_EN_GPIO, GPIO_MODE_OUTPUT);
    gpio_set_level(SD_TEST_BOARD_VSEL_EN_GPIO, 0);
    usleep(SD_TEST_BOARD_PWR_RST_DELAY_MS * 1000);
    gpio_set_level(SD_TEST_BOARD_VSEL_EN_GPIO, 1);
    usleep(SD_TEST_BOARD_PWR_ON_DELAY_MS * 1000);
}
