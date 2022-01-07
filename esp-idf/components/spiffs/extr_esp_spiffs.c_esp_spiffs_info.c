
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ esp_err_t ;
struct TYPE_2__ {int fs; } ;


 scalar_t__ ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int SPIFFS_info (int ,size_t*,size_t*) ;
 TYPE_1__** _efs ;
 scalar_t__ esp_spiffs_by_label (char const*,int*) ;

esp_err_t esp_spiffs_info(const char* partition_label, size_t *total_bytes, size_t *used_bytes)
{
    int index;
    if (esp_spiffs_by_label(partition_label, &index) != ESP_OK) {
        return ESP_ERR_INVALID_STATE;
    }
    SPIFFS_info(_efs[index]->fs, total_bytes, used_bytes);
    return ESP_OK;
}
