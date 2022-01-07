
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;


 int COUNT_EFUSE_BLOCKS ;
 int ESP_LOGD (int ,char*,int,int) ;
 int ESP_LOGI (int ,char*) ;
 int REG_READ (scalar_t__) ;
 int TAG ;
 TYPE_1__* range_read_addr_blocks ;
 int ** virt_blocks ;

void esp_efuse_utility_update_virt_blocks(void)
{
    ESP_LOGI(TAG, "Emulate efuse is disabled");

}
