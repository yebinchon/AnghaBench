
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char* command; char* help; TYPE_4__* argtable; int * func; int * hint; } ;
typedef TYPE_3__ esp_console_cmd_t ;
struct TYPE_10__ {void* end; void* ttl; void* node_num; void* test_size; void* action_type; TYPE_2__* dev_role; void* net_idx; void* app_idx; void* unicast_address; void* opcode; TYPE_1__* test_num; void* playload_byte; } ;
struct TYPE_8__ {int * ival; } ;
struct TYPE_7__ {int* ival; } ;


 int ESP_ERROR_CHECK (int ) ;
 int ROLE_PROVISIONER ;
 void* arg_end (int) ;
 void* arg_int0 (char*,int *,char*,char*) ;
 void* arg_str1 (char*,int *,char*,char*) ;
 int ble_mesh_test_performance_client_model ;
 int ble_mesh_test_performance_client_model_performance ;
 int esp_console_cmd_register (TYPE_3__ const*) ;
 TYPE_4__ test_perf_client_model ;
 TYPE_4__ test_perf_client_model_statistics ;

void ble_mesh_performance_client_model_command(void)
{
    test_perf_client_model.action_type = arg_str1("z", ((void*)0), "<action>", "action type");
    test_perf_client_model.playload_byte = arg_int0("p", ((void*)0), "<byte>", "playload byte");
    test_perf_client_model.test_num = arg_int0("n", ((void*)0), "<number>", "test number");

    test_perf_client_model.test_num->ival[0] = 1000;
    test_perf_client_model.opcode = arg_int0("o", ((void*)0), "<opcode>", "opcode");
    test_perf_client_model.unicast_address = arg_int0("u", ((void*)0), "<address>", "unicast address");
    test_perf_client_model.ttl = arg_int0("t", ((void*)0), "<ttl>", "ttl");
    test_perf_client_model.app_idx = arg_int0("a", ((void*)0), "<appkey>", "appkey index");
    test_perf_client_model.net_idx = arg_int0("i", ((void*)0), "<network key>", "network key index");
    test_perf_client_model.dev_role = arg_int0("d", ((void*)0), "<role>", "device role");
    test_perf_client_model.dev_role->ival[0] = ROLE_PROVISIONER;
    test_perf_client_model.end = arg_end(1);

    const esp_console_cmd_t test_perf_client_model_cmd = {
        .command = "bmtpcvm",
        .help = "ble mesh test performance client vendor model",
        .hint = ((void*)0),
        .func = &ble_mesh_test_performance_client_model,
        .argtable = &test_perf_client_model,
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&test_perf_client_model_cmd));

    test_perf_client_model_statistics.action_type = arg_str1("z", ((void*)0), "<action>", "action type");
    test_perf_client_model_statistics.test_size = arg_int0("s", ((void*)0), "<test size>", "test size");
    test_perf_client_model_statistics.node_num = arg_int0("n", ((void*)0), "<node number>", "node number");
    test_perf_client_model_statistics.ttl = arg_int0("l", ((void*)0), "<test number>", "ttl");
    test_perf_client_model_statistics.end = arg_end(1);

    const esp_console_cmd_t test_perf_client_model_performance_cmd = {
        .command = "bmcperf",
        .help = "ble mesh client: test performance",
        .hint = ((void*)0),
        .func = &ble_mesh_test_performance_client_model_performance,
        .argtable = &test_perf_client_model_statistics,
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&test_perf_client_model_performance_cmd));
}
