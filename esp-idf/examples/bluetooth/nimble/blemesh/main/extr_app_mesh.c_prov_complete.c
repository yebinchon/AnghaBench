
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;


 int ESP_LOGI (int ,char*,int ) ;
 int tag ;

__attribute__((used)) static void prov_complete(u16_t net_idx, u16_t addr)
{
    ESP_LOGI(tag, "Local node provisioned, primary address 0x%04x\n", addr);
}
