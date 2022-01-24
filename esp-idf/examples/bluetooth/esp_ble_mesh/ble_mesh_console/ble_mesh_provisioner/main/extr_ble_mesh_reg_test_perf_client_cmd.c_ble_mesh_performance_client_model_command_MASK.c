#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* command; char* help; TYPE_4__* argtable; int /*<<< orphan*/ * func; int /*<<< orphan*/ * hint; } ;
typedef  TYPE_3__ esp_console_cmd_t ;
struct TYPE_10__ {void* end; void* ttl; void* node_num; void* test_size; void* action_type; TYPE_2__* dev_role; void* net_idx; void* app_idx; void* unicast_address; void* opcode; TYPE_1__* test_num; void* playload_byte; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ival; } ;
struct TYPE_7__ {int* ival; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROLE_PROVISIONER ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC3 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  ble_mesh_test_performance_client_model ; 
 int /*<<< orphan*/  ble_mesh_test_performance_client_model_performance ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*) ; 
 TYPE_4__ test_perf_client_model ; 
 TYPE_4__ test_perf_client_model_statistics ; 

void FUNC5(void)
{
    test_perf_client_model.action_type = FUNC3("z", NULL, "<action>", "action type");
    test_perf_client_model.playload_byte = FUNC2("p", NULL, "<byte>", "playload byte");
    test_perf_client_model.test_num = FUNC2("n", NULL, "<number>", "test number");
    // set test num default to 1000
    test_perf_client_model.test_num->ival[0] = 1000;
    test_perf_client_model.opcode = FUNC2("o", NULL, "<opcode>", "opcode");
    test_perf_client_model.unicast_address = FUNC2("u", NULL, "<address>", "unicast address");
    test_perf_client_model.ttl = FUNC2("t", NULL, "<ttl>", "ttl");
    test_perf_client_model.app_idx = FUNC2("a", NULL, "<appkey>", "appkey index");
    test_perf_client_model.net_idx = FUNC2("i", NULL, "<network key>", "network key index");
    test_perf_client_model.dev_role = FUNC2("d", NULL, "<role>", "device role");
    test_perf_client_model.dev_role->ival[0] = ROLE_PROVISIONER;
    test_perf_client_model.end = FUNC1(1);

    const esp_console_cmd_t test_perf_client_model_cmd = {
        .command = "bmtpcvm",
        .help = "ble mesh test performance client vendor model",
        .hint = NULL,
        .func = &ble_mesh_test_performance_client_model,
        .argtable = &test_perf_client_model,
    };
    FUNC0(FUNC4(&test_perf_client_model_cmd));

    test_perf_client_model_statistics.action_type = FUNC3("z", NULL, "<action>", "action type");
    test_perf_client_model_statistics.test_size = FUNC2("s", NULL, "<test size>", "test size");
    test_perf_client_model_statistics.node_num = FUNC2("n", NULL, "<node number>", "node number");
    test_perf_client_model_statistics.ttl = FUNC2("l", NULL, "<test number>", "ttl");
    test_perf_client_model_statistics.end = FUNC1(1);

    const esp_console_cmd_t test_perf_client_model_performance_cmd = {
        .command = "bmcperf",
        .help = "ble mesh client: test performance",
        .hint = NULL,
        .func = &ble_mesh_test_performance_client_model_performance,
        .argtable = &test_perf_client_model_statistics,
    };
    FUNC0(FUNC4(&test_perf_client_model_performance_cmd));
}