
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fs; } ;


 scalar_t__ ESP_OK ;
 int SPIFFS_mounted (int ) ;
 TYPE_1__** _efs ;
 scalar_t__ esp_spiffs_by_label (char const*,int*) ;

bool esp_spiffs_mounted(const char* partition_label)
{
    int index;
    if (esp_spiffs_by_label(partition_label, &index) != ESP_OK) {
        return 0;
    }
    return (SPIFFS_mounted(_efs[index]->fs));
}
