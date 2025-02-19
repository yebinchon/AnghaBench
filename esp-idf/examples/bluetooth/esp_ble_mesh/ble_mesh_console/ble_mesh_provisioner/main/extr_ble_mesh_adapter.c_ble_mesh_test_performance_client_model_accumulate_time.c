
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ test_length; scalar_t__ test_num; scalar_t__* package_index; scalar_t__ ttl; scalar_t__* time; } ;


 int VENDOR_MODEL_PERF_OPERATION_TYPE_SET ;
 int VENDOR_MODEL_PERF_OPERATION_TYPE_SET_UNACK ;
 int ble_mesh_test_perf_sema ;
 int portMAX_DELAY ;
 TYPE_1__ test_perf_statistics ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

int ble_mesh_test_performance_client_model_accumulate_time(uint16_t time, uint8_t *data, uint8_t ack_ttl, uint16_t length)
{
    uint16_t i;
    uint16_t sequence_num = 0;
    uint16_t node_received_ttl = 0;
    xSemaphoreTake(ble_mesh_test_perf_sema, portMAX_DELAY);


    if (length != test_perf_statistics.test_length) {
        xSemaphoreGive(ble_mesh_test_perf_sema);
        return 1;
    }

    if (data != ((void*)0)) {
        sequence_num = (data[0] << 8) | data[1];
        if (data[2] == VENDOR_MODEL_PERF_OPERATION_TYPE_SET) {
            node_received_ttl = data[3];
        }
    }

    for (i = 0; i < test_perf_statistics.test_num; i++) {
        if (test_perf_statistics.package_index[i] == sequence_num) {
            xSemaphoreGive(ble_mesh_test_perf_sema);
            return 1;
        }
    }

    for (i = 0; i < test_perf_statistics.test_num; i++) {
        if (test_perf_statistics.package_index[i] == 0) {
            test_perf_statistics.package_index[i] = sequence_num;
            if (data[2] == VENDOR_MODEL_PERF_OPERATION_TYPE_SET) {
                if (node_received_ttl == test_perf_statistics.ttl && ack_ttl == test_perf_statistics.ttl) {
                    test_perf_statistics.time[i] = time;
                } else {
                    test_perf_statistics.time[i] = 0;
                }
            } else if (data[2] == VENDOR_MODEL_PERF_OPERATION_TYPE_SET_UNACK) {
                test_perf_statistics.time[i] = time;
            }
            break;
        }
    }

    xSemaphoreGive(ble_mesh_test_perf_sema);
    return 0;
}
