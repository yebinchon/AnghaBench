
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_6__ {TYPE_1__ test; } ;
typedef TYPE_2__ bootloader_state_t ;


 char* CONFIG_BOOTLOADER_DATA_FACTORY_RESET ;
 int CONFIG_BOOTLOADER_HOLD_TIME_GPIO ;
 int CONFIG_BOOTLOADER_NUM_PIN_APP_TEST ;
 int CONFIG_BOOTLOADER_NUM_PIN_FACTORY_RESET ;
 scalar_t__ DEEPSLEEP_RESET ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,...) ;
 int INVALID_INDEX ;
 int TAG ;
 int TEST_APP_INDEX ;
 int bootloader_common_check_long_hold_gpio (int ,int ) ;
 int bootloader_common_erase_part_type_data (char const*,int) ;
 int bootloader_utility_get_selected_boot_partition (TYPE_2__ const*) ;
 scalar_t__ rtc_get_reset_reason (int ) ;

__attribute__((used)) static int selected_boot_partition(const bootloader_state_t *bs)
{
    int boot_index = bootloader_utility_get_selected_boot_partition(bs);
    if (boot_index == INVALID_INDEX) {
        return boot_index;
    }
    if (rtc_get_reset_reason(0) != DEEPSLEEP_RESET) {
    }
    return boot_index;
}
