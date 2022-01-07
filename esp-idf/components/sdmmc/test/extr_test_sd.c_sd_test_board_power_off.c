
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_MODE_INPUT ;
 int SD_TEST_BOARD_VSEL_EN_GPIO ;
 int SD_TEST_BOARD_VSEL_GPIO ;
 int gpio_set_direction (int ,int ) ;
 int gpio_set_level (int ,int ) ;

__attribute__((used)) static void sd_test_board_power_off(void)
{
    gpio_set_level(SD_TEST_BOARD_VSEL_EN_GPIO, 0);
    gpio_set_direction(SD_TEST_BOARD_VSEL_GPIO, GPIO_MODE_INPUT);
    gpio_set_level(SD_TEST_BOARD_VSEL_GPIO, 0);
    gpio_set_direction(SD_TEST_BOARD_VSEL_EN_GPIO, GPIO_MODE_INPUT);
}
