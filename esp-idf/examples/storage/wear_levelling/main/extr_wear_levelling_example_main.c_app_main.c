
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int line ;
struct TYPE_3__ {int max_files; int format_if_mount_failed; int allocation_unit_size; } ;
typedef TYPE_1__ esp_vfs_fat_mount_config_t ;
typedef scalar_t__ esp_err_t ;
typedef int FILE ;


 int CONFIG_WL_SECTOR_SIZE ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int base_path ;
 int esp_err_to_name (scalar_t__) ;
 char* esp_get_idf_version () ;
 scalar_t__ esp_vfs_fat_spiflash_mount (int ,char*,TYPE_1__ const*,int *) ;
 int esp_vfs_fat_spiflash_unmount (int ,int ) ;
 int fclose (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int s_wl_handle ;
 char* strchr (char*,char) ;

void app_main(void)
{
    ESP_LOGI(TAG, "Mounting FAT filesystem");


    const esp_vfs_fat_mount_config_t mount_config = {
            .max_files = 4,
            .format_if_mount_failed = 1,
            .allocation_unit_size = CONFIG_WL_SECTOR_SIZE
    };
    esp_err_t err = esp_vfs_fat_spiflash_mount(base_path, "storage", &mount_config, &s_wl_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to mount FATFS (%s)", esp_err_to_name(err));
        return;
    }
    ESP_LOGI(TAG, "Opening file");
    FILE *f = fopen("/spiflash/hello.txt", "wb");
    if (f == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to open file for writing");
        return;
    }
    fprintf(f, "written using ESP-IDF %s\n", esp_get_idf_version());
    fclose(f);
    ESP_LOGI(TAG, "File written");


    ESP_LOGI(TAG, "Reading file");
    f = fopen("/spiflash/hello.txt", "rb");
    if (f == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to open file for reading");
        return;
    }
    char line[128];
    fgets(line, sizeof(line), f);
    fclose(f);

    char *pos = strchr(line, '\n');
    if (pos) {
        *pos = '\0';
    }
    ESP_LOGI(TAG, "Read from file: '%s'", line);


    ESP_LOGI(TAG, "Unmounting FAT filesystem");
    ESP_ERROR_CHECK( esp_vfs_fat_spiflash_unmount(base_path, s_wl_handle));

    ESP_LOGI(TAG, "Done");
}
