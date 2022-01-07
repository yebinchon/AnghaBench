
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ statistics; scalar_t__ node_num; scalar_t__ ttl; scalar_t__ test_num; int * package_index; int * time; } ;


 int free (int *) ;
 TYPE_1__ test_perf_statistics ;

void ble_mesh_test_performance_client_model_destroy(void)
{
    if (test_perf_statistics.time != ((void*)0)) {
        free(test_perf_statistics.time);
    }

    if (test_perf_statistics.package_index != ((void*)0)) {
        free(test_perf_statistics.package_index);
    }

    test_perf_statistics.test_num = 0;
    test_perf_statistics.ttl = 0;
    test_perf_statistics.node_num = 0;
    test_perf_statistics.statistics = 0;
}
