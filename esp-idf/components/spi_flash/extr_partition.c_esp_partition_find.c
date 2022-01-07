
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_type_t ;
typedef int esp_partition_subtype_t ;
typedef int * esp_partition_iterator_t ;


 scalar_t__ ESP_OK ;
 scalar_t__ ensure_partitions_loaded () ;
 int * esp_partition_next (int *) ;
 int * iterator_create (int ,int ,char const*) ;

esp_partition_iterator_t esp_partition_find(esp_partition_type_t type,
        esp_partition_subtype_t subtype, const char* label)
{
    if (ensure_partitions_loaded() != ESP_OK) {
        return ((void*)0);
    }


    esp_partition_iterator_t it = iterator_create(type, subtype, label);

    it = esp_partition_next(it);

    return it;
}
