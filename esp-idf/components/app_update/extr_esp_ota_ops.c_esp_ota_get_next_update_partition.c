
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_t ;
typedef scalar_t__ esp_partition_subtype_t ;


 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_0 ;
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_MAX ;
 int ESP_PARTITION_TYPE_APP ;
 int assert (int ) ;
 int * esp_ota_get_running_partition () ;
 int * esp_partition_find_first (int ,scalar_t__,int *) ;
 int * esp_partition_verify (int const*) ;

const esp_partition_t* esp_ota_get_next_update_partition(const esp_partition_t *start_from)
{
    const esp_partition_t *default_ota = ((void*)0);
    bool next_is_result = 0;
    if (start_from == ((void*)0)) {
        start_from = esp_ota_get_running_partition();
    } else {
        start_from = esp_partition_verify(start_from);
    }
    assert (start_from != ((void*)0));
    for (esp_partition_subtype_t t = ESP_PARTITION_SUBTYPE_APP_OTA_0;
         t != ESP_PARTITION_SUBTYPE_APP_OTA_MAX;
         t++) {
        const esp_partition_t *p = esp_partition_find_first(ESP_PARTITION_TYPE_APP, t, ((void*)0));
        if (p == ((void*)0)) {
            continue;
        }

        if (default_ota == ((void*)0)) {


            default_ota = p;
        }

        if (p == start_from) {

            next_is_result = 1;
        }
        else if (next_is_result) {
            return p;
        }
    }

    return default_ota;

}
