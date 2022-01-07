
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ user_data; } ;
typedef TYPE_1__ spiffs ;
struct TYPE_5__ {int lock; } ;
typedef TYPE_2__ esp_spiffs_t ;


 int xSemaphoreGive (int ) ;

void spiffs_api_unlock(spiffs *fs)
{
    xSemaphoreGive(((esp_spiffs_t *)(fs->user_data))->lock);
}
