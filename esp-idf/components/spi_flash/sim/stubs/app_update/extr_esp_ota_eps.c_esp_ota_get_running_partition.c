
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_t ;


 int ESP_PARTITION_SUBTYPE_ANY ;
 int ESP_PARTITION_TYPE_APP ;
 int assert (int ) ;
 int * esp_partition_find_first (int ,int ,int *) ;

const esp_partition_t* esp_ota_get_running_partition(void)
{

    const esp_partition_t* partition = esp_partition_find_first(ESP_PARTITION_TYPE_APP,
                                                     ESP_PARTITION_SUBTYPE_ANY,
                                                     ((void*)0));
    assert(partition != ((void*)0));

    return partition;
}
