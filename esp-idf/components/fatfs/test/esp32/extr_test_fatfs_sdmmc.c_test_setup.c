
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sdmmc_slot_config_t ;
typedef int sdmmc_host_t ;
struct TYPE_3__ {int format_if_mount_failed; int max_files; int allocation_unit_size; } ;
typedef TYPE_1__ esp_vfs_fat_sdmmc_mount_config_t ;


 int SDMMC_HOST_DEFAULT () ;
 int SDMMC_SLOT_CONFIG_DEFAULT () ;
 int TEST_ESP_OK (int ) ;
 int esp_vfs_fat_sdmmc_mount (char*,int *,int *,TYPE_1__*,int *) ;

__attribute__((used)) static void test_setup(void)
{
    sdmmc_host_t host = SDMMC_HOST_DEFAULT();
    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = 1,
        .max_files = 5,
        .allocation_unit_size = 16 * 1024
    };
    TEST_ESP_OK(esp_vfs_fat_sdmmc_mount("/sdcard", &host, &slot_config, &mount_config, ((void*)0)));
}
