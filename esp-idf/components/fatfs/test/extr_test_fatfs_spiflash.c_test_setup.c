
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int format_if_mount_failed; int max_files; } ;
typedef TYPE_1__ esp_vfs_fat_sdmmc_mount_config_t ;


 int TEST_ESP_OK (int ) ;
 int esp_vfs_fat_spiflash_mount (char*,int *,TYPE_1__*,int *) ;
 int s_test_wl_handle ;

__attribute__((used)) static void test_setup(void)
{
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = 1,
        .max_files = 5
    };

    TEST_ESP_OK(esp_vfs_fat_spiflash_mount("/spiflash", ((void*)0), &mount_config, &s_test_wl_handle));
}
