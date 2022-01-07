
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int address; int label; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int * esp_partition_iterator_t ;


 int ESP_LOGI (int ,char*,...) ;
 int ESP_PARTITION_SUBTYPE_ANY ;
 int ESP_PARTITION_SUBTYPE_APP_FACTORY ;
 int ESP_PARTITION_SUBTYPE_DATA_FAT ;
 int ESP_PARTITION_SUBTYPE_DATA_NVS ;
 int ESP_PARTITION_SUBTYPE_DATA_PHY ;
 int ESP_PARTITION_TYPE_APP ;
 int ESP_PARTITION_TYPE_DATA ;
 int TAG ;
 int * esp_partition_find (int ,int ,int *) ;
 TYPE_1__* esp_partition_get (int *) ;
 int esp_partition_iterator_release (int *) ;
 int * esp_partition_next (int *) ;
 int find_partition (int ,int ,char*) ;

void app_main(void)
{
    extern const char csv_start[] asm("_binary_partitions_example_csv_start");
    extern const char csv_end[] asm("_binary_partitions_example_csv_end");

    ESP_LOGI(TAG, "Printing partition table csv file contents for reference...\n\n%.*s", csv_end - csv_start + 1, csv_start);



    ESP_LOGI(TAG, "----------------Find partitions---------------");


    find_partition(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_NVS, ((void*)0));
    find_partition(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_PHY, ((void*)0));
    find_partition(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_FACTORY, ((void*)0));

    find_partition(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_FAT, ((void*)0));

    ESP_LOGI(TAG, "Find second FAT partition by specifying the label");

    find_partition(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_FAT, "storage2");



    ESP_LOGI(TAG, "----------------Iterate through partitions---------------");

    esp_partition_iterator_t it;

    ESP_LOGI(TAG, "Iterating through app partitions...");
    it = esp_partition_find(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_ANY, ((void*)0));



    for (; it != ((void*)0); it = esp_partition_next(it)) {
        const esp_partition_t *part = esp_partition_get(it);
        ESP_LOGI(TAG, "\tfound partition '%s' at offset 0x%x with size 0x%x", part->label, part->address, part->size);
    }

    esp_partition_iterator_release(it);

    ESP_LOGI(TAG, "Iterating through data partitions...");
    it = esp_partition_find(ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_ANY, ((void*)0));



    for (; it != ((void*)0); it = esp_partition_next(it)) {
        const esp_partition_t *part = esp_partition_get(it);
        ESP_LOGI(TAG, "\tfound partition '%s' at offset 0x%x with size 0x%x", part->label, part->address, part->size);
    }


    esp_partition_iterator_release(it);

    ESP_LOGI(TAG, "Example end");
}
