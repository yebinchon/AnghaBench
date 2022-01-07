
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int esp_flash_t ;
typedef int FILE ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 char* esp_get_idf_version () ;
 int example_add_partition (int *,char const*) ;
 int example_get_fatfs_usage (size_t*,size_t*) ;
 int * example_init_ext_flash () ;
 int example_list_data_partitions () ;
 int example_mount_fatfs (char const*) ;
 int fclose (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 char* strchr (char*,char) ;

void app_main(void)
{

    esp_flash_t* flash = example_init_ext_flash();
    if (flash == ((void*)0)) {
        return;
    }


    const char *partition_label = "storage";
    example_add_partition(flash, partition_label);


    example_list_data_partitions();


    if (!example_mount_fatfs(partition_label)) {
        return;
    }


    size_t bytes_total, bytes_free;
    example_get_fatfs_usage(&bytes_total, &bytes_free);
    ESP_LOGI(TAG, "FAT FS: %d kB total, %d kB free", bytes_total / 1024, bytes_free / 1024);


    ESP_LOGI(TAG, "Opening file");
    FILE *f = fopen("/extflash/hello.txt", "wb");
    if (f == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to open file for writing");
        return;
    }
    fprintf(f, "Written using ESP-IDF %s\n", esp_get_idf_version());
    fclose(f);
    ESP_LOGI(TAG, "File written");


    ESP_LOGI(TAG, "Reading file");
    f = fopen("/extflash/hello.txt", "rb");
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
}
