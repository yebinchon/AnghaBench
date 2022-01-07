
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sdmmc_slot_config_t ;
struct TYPE_6__ {int max_freq_khz; } ;
typedef TYPE_1__ sdmmc_host_t ;
struct TYPE_7__ {int format_if_mount_failed; int max_files; int allocation_unit_size; } ;
typedef TYPE_2__ esp_vfs_fat_sdmmc_mount_config_t ;


 int SDMMC_FREQ_HIGHSPEED ;
 TYPE_1__ SDMMC_HOST_DEFAULT () ;
 int SDMMC_SLOT_CONFIG_DEFAULT () ;
 int TEST_ESP_OK (int ) ;
 int esp_vfs_fat_sdmmc_mount (char*,TYPE_1__*,int *,TYPE_2__*,int *) ;
 int esp_vfs_fat_sdmmc_unmount () ;
 int test_fatfs_rw_speed (char*,void*,size_t,size_t,int) ;

__attribute__((used)) static void speed_test(void* buf, size_t buf_size, size_t file_size, bool write)
{
    sdmmc_host_t host = SDMMC_HOST_DEFAULT();
    host.max_freq_khz = SDMMC_FREQ_HIGHSPEED;
    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = write,
        .max_files = 5,
        .allocation_unit_size = 64 * 1024
    };
    TEST_ESP_OK(esp_vfs_fat_sdmmc_mount("/sdcard", &host, &slot_config, &mount_config, ((void*)0)));

    test_fatfs_rw_speed("/sdcard/4mb.bin", buf, buf_size, file_size, write);

    TEST_ESP_OK(esp_vfs_fat_sdmmc_unmount());
}
