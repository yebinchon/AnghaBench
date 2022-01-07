
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ bootloader_state_t ;


 scalar_t__ ESP_OK ;
 int INVALID_INDEX ;
 scalar_t__ bootloader_init () ;
 int bootloader_reset () ;
 int bootloader_utility_load_boot_image (TYPE_1__*,int) ;
 int bootloader_utility_load_boot_image_from_deep_sleep () ;
 int select_partition_number (TYPE_1__*) ;

void __attribute__((noreturn)) call_start_cpu0(void)
{

    if (bootloader_init() != ESP_OK) {
        bootloader_reset();
    }
    bootloader_state_t bs = { 0 };
    int boot_index = select_partition_number(&bs);
    if (boot_index == INVALID_INDEX) {
        bootloader_reset();
    }


    bootloader_utility_load_boot_image(&bs, boot_index);
}
