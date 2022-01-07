
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int statistics; } ;


 int ble_mesh_test_perf_sema ;
 int portMAX_DELAY ;
 TYPE_1__ test_perf_statistics ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

void ble_mesh_test_performance_client_model_accumulate_statistics(uint32_t value)
{
    xSemaphoreTake(ble_mesh_test_perf_sema, portMAX_DELAY);
    test_perf_statistics.statistics += value;
    xSemaphoreGive(ble_mesh_test_perf_sema);
}
