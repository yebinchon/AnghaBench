
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bootloader_state_t ;


 int ESP_LOGE (int ,char*) ;
 int INVALID_INDEX ;
 int TAG ;
 int bootloader_utility_load_partition_table (int *) ;
 int selected_boot_partition (int *) ;

__attribute__((used)) static int select_partition_number (bootloader_state_t *bs)
{

    if (!bootloader_utility_load_partition_table(bs)) {
        ESP_LOGE(TAG, "load partition table error!");
        return INVALID_INDEX;
    }


    return selected_boot_partition(bs);
}
