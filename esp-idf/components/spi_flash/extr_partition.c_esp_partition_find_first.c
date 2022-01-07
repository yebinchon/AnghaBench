
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_type_t ;
typedef int esp_partition_t ;
typedef int esp_partition_subtype_t ;
typedef int * esp_partition_iterator_t ;


 int * esp_partition_find (int ,int ,char const*) ;
 int * esp_partition_get (int *) ;
 int esp_partition_iterator_release (int *) ;

const esp_partition_t* esp_partition_find_first(esp_partition_type_t type,
        esp_partition_subtype_t subtype, const char* label)
{
    esp_partition_iterator_t it = esp_partition_find(type, subtype, label);
    if (it == ((void*)0)) {
        return ((void*)0);
    }
    const esp_partition_t* res = esp_partition_get(it);
    esp_partition_iterator_release(it);
    return res;
}
