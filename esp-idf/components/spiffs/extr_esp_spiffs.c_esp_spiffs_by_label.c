
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* partition; scalar_t__ by_label; } ;
typedef TYPE_2__ esp_spiffs_t ;
typedef int esp_err_t ;
struct TYPE_4__ {int label; } ;


 int CONFIG_SPIFFS_MAX_PARTITIONS ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_OK ;
 TYPE_2__** _efs ;
 scalar_t__ strncmp (char const*,int ,int) ;

__attribute__((used)) static esp_err_t esp_spiffs_by_label(const char* label, int * index){
    int i;
    esp_spiffs_t * p;
    for (i = 0; i < CONFIG_SPIFFS_MAX_PARTITIONS; i++) {
        p = _efs[i];
        if (p) {
            if (!label && !p->by_label) {
                *index = i;
                return ESP_OK;
            }
            if (label && p->by_label && strncmp(label, p->partition->label, 17) == 0) {
                *index = i;
                return ESP_OK;
            }
        }
    }
    return ESP_ERR_NOT_FOUND;
}
