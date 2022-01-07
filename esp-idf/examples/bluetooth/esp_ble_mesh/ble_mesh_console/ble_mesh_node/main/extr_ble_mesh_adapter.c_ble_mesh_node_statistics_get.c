
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int package_num; int statistics; } ;


 int ESP_LOGI (int ,char*,int ,int ) ;
 int TAG ;
 int ble_mesh_node_sema ;
 TYPE_1__ ble_mesh_node_statistics ;
 int portMAX_DELAY ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

void ble_mesh_node_statistics_get(void)
{
    xSemaphoreTake(ble_mesh_node_sema, portMAX_DELAY);
    ESP_LOGI(TAG, "statistics:%d,%d\n", ble_mesh_node_statistics.statistics, ble_mesh_node_statistics.package_num);
    xSemaphoreGive(ble_mesh_node_sema);
}
