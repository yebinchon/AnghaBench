
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {size_t test_num; scalar_t__* time; int statistics; } ;


 int ESP_LOGI (int ,char*,int ,size_t) ;
 int TAG ;
 int ble_mesh_test_perf_sema ;
 int portMAX_DELAY ;
 TYPE_1__ test_perf_statistics ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

void ble_mesh_test_performance_client_model_get(void)
{
    uint32_t i, j;
    uint32_t sum_time = 0;

    xSemaphoreTake(ble_mesh_test_perf_sema, portMAX_DELAY);

    for (i = 0, j = 0; i < test_perf_statistics.test_num; i++) {
        if (test_perf_statistics.time[i] != 0) {
            sum_time += test_perf_statistics.time[i];
            j += 1;
        } else {
            continue;
        }

        if (j == test_perf_statistics.test_num - 1) {
            break;
        }
    }

    ESP_LOGI(TAG, "VendorModel:Statistics,%d,%d\n",
             test_perf_statistics.statistics, (sum_time / (j + 1)));

    xSemaphoreGive(ble_mesh_test_perf_sema);
}
