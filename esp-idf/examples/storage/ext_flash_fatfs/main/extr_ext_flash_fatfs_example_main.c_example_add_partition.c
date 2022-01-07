
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_partition_t ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ esp_flash_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,char const*,int) ;
 int ESP_PARTITION_SUBTYPE_DATA_FAT ;
 int ESP_PARTITION_TYPE_DATA ;
 int TAG ;
 int esp_partition_register_external (TYPE_1__*,int ,int,char const*,int ,int ,int const**) ;

__attribute__((used)) static const esp_partition_t* example_add_partition(esp_flash_t* ext_flash, const char* partition_label)
{
    ESP_LOGI(TAG, "Adding external Flash as a partition, label=\"%s\", size=%d KB", partition_label, ext_flash->size / 1024);
    const esp_partition_t* fat_partition;
    ESP_ERROR_CHECK(esp_partition_register_external(ext_flash, 0, ext_flash->size, partition_label, ESP_PARTITION_TYPE_DATA, ESP_PARTITION_SUBTYPE_DATA_FAT, &fat_partition));
    return fat_partition;
}
