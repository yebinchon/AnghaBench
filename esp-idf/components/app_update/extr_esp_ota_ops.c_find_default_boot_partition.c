
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_t ;
typedef scalar_t__ esp_partition_subtype_t ;


 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_FACTORY ;
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_MAX ;
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_MIN ;
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_TEST ;
 int ESP_PARTITION_TYPE_APP ;
 int TAG ;
 int * esp_partition_find_first (int ,scalar_t__,int *) ;

__attribute__((used)) static const esp_partition_t *find_default_boot_partition(void)
{



    const esp_partition_t *result = esp_partition_find_first(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_FACTORY, ((void*)0));
    if (result != ((void*)0)) {
        return result;
    }


    for (esp_partition_subtype_t s = ESP_PARTITION_SUBTYPE_APP_OTA_MIN; s != ESP_PARTITION_SUBTYPE_APP_OTA_MAX; s++) {
        result = esp_partition_find_first(ESP_PARTITION_TYPE_APP, s, ((void*)0));
        if (result != ((void*)0)) {
            return result;
        }
    }


    result = esp_partition_find_first(ESP_PARTITION_TYPE_APP, ESP_PARTITION_SUBTYPE_APP_TEST, ((void*)0));
    if (result != ((void*)0)) {
        return result;
    }

    ESP_LOGE(TAG, "invalid partition table, no app partitions");
    return ((void*)0);
}
