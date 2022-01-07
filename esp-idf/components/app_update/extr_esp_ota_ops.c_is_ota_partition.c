
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; scalar_t__ subtype; } ;
typedef TYPE_1__ esp_partition_t ;


 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_0 ;
 scalar_t__ ESP_PARTITION_SUBTYPE_APP_OTA_MAX ;
 scalar_t__ ESP_PARTITION_TYPE_APP ;

__attribute__((used)) static bool is_ota_partition(const esp_partition_t *p)
{
    return (p != ((void*)0)
            && p->type == ESP_PARTITION_TYPE_APP
            && p->subtype >= ESP_PARTITION_SUBTYPE_APP_OTA_0
            && p->subtype < ESP_PARTITION_SUBTYPE_APP_OTA_MAX);
}
