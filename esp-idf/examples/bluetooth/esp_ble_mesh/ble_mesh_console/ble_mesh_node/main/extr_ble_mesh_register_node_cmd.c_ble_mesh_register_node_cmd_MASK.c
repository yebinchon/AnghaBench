#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* command; char* help; TYPE_3__* argtable; int /*<<< orphan*/ * func; int /*<<< orphan*/ * hint; } ;
typedef  TYPE_2__ esp_console_cmd_t ;
struct TYPE_12__ {void* end; void* group_addr; void* app_idx; void* app_key; void* dev_key; void* unicast_addr; void* net_idx; void* net_key; void* tx_sense_power; void* action_type; void* package_num; void* enable; void* bearer; void* dev_uuid; void* pub_config; TYPE_1__* config_index; void* model_type; void* input_actions; void* input_size; void* output_actions; void* output_size; void* static_val_len; void* static_val; } ;
struct TYPE_10__ {scalar_t__* ival; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC3 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC4 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC5 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_3__ bearer ; 
 int /*<<< orphan*/  ble_mesh_init ; 
 int /*<<< orphan*/  ble_mesh_load_oob ; 
 int /*<<< orphan*/  ble_mesh_node_enable_bearer ; 
 int /*<<< orphan*/  ble_mesh_node_enter_network_auto ; 
 int /*<<< orphan*/  ble_mesh_node_reset ; 
 int /*<<< orphan*/  ble_mesh_node_statistics_regist ; 
 int /*<<< orphan*/  ble_mesh_power_set ; 
 int /*<<< orphan*/  ble_mesh_register_node_cb ; 
 TYPE_3__ component ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const*) ; 
 TYPE_3__ node_network_info ; 
 TYPE_3__ node_statistices ; 
 TYPE_3__ oob ; 
 TYPE_3__ power_set ; 

void FUNC7(void)
{
    const esp_console_cmd_t register_cmd = {
        .command  = "bmreg",
        .help = "ble mesh: provisioner/node register callback",
        .hint = NULL,
        .func = &ble_mesh_register_node_cb,
    };
    FUNC0(FUNC6(&register_cmd));

    oob.static_val = FUNC4("s", NULL, "<value>", "Static OOB value");
    oob.static_val_len = FUNC2("l", NULL, "<length>", "Static OOB value length");
    oob.output_size = FUNC2("x", NULL, "<size>", "Maximum size of Output OOB");
    oob.output_actions = FUNC2("o", NULL, "<actions>", "Supported Output OOB Actions");
    oob.input_size = FUNC2("y", NULL, "<size>", "Maximum size of Input OOB");
    oob.input_actions = FUNC2("i", NULL, "<actions>", "Supported Input OOB Actions");
    oob.end = FUNC1(1);

    const esp_console_cmd_t oob_cmd = {
        .command = "bmoob",
        .help = "ble mesh: provisioner/node config OOB parameters",
        .hint = NULL,
        .func = &ble_mesh_load_oob,
        .argtable = &oob,
    };
    FUNC0( FUNC6(&oob_cmd) );

    component.model_type = FUNC2("m", NULL, "<model>", "mesh model");
    component.config_index = FUNC2("c", NULL, "<index>", "mesh model op");
    component.config_index->ival[0] = 0; // set default value
    component.pub_config = FUNC2("p", NULL, "<publish>", "publish message buffer");
    component.dev_uuid = FUNC4("d", NULL, "<uuid>", "device uuid");
    component.end = FUNC1(1);

    const esp_console_cmd_t model_cmd = {
        .command = "bminit",
        .help = "ble mesh: provisioner/node init",
        .hint = NULL,
        .func = &ble_mesh_init,
        .argtable = &component,
    };
    FUNC0( FUNC6(&model_cmd) );

    bearer.bearer = FUNC2("b", NULL, "<bearer>", "supported bearer");
    bearer.enable = FUNC2("e", NULL, "<enable/disable>", "bearers node supported");
    bearer.end = FUNC1(1);

    const esp_console_cmd_t bearer_cmd = {
        .command = "bmnbearer",
        .help = "ble mesh node: enable/disable different bearer",
        .hint = NULL,
        .func = &ble_mesh_node_enable_bearer,
        .argtable = &bearer,
    };
    FUNC0(FUNC6(&bearer_cmd));

    const esp_console_cmd_t reset_cmd = {
        .command = "bmnreset",
        .help = "ble mesh node: reset",
        .hint = NULL,
        .func = &ble_mesh_node_reset,
    };
    FUNC0(FUNC6(&reset_cmd));

    node_statistices.action_type = FUNC5("z", NULL, "<action>", "action type");
    node_statistices.package_num = FUNC2("p", NULL, "<package>", "package number");
    node_statistices.end = FUNC1(1);

    const esp_console_cmd_t node_statistices_cmd = {
        .command = "bmsperf",
        .help = "ble mesh server: performance statistics",
        .hint = NULL,
        .func = &ble_mesh_node_statistics_regist,
        .argtable = &node_statistices,
    };
    FUNC0(FUNC6(&node_statistices_cmd));

    power_set.action_type = FUNC5("z", NULL, "<action>", "action type");
    power_set.tx_sense_power = FUNC2("t", NULL, "<power>", "tx power or sense");
    power_set.end = FUNC1(1);

    const esp_console_cmd_t power_set_cmd = {
        .command = "bmtxpower",
        .help = "ble mesh: set tx power or sense",
        .hint = NULL,
        .func = &ble_mesh_power_set,
        .argtable = &power_set,
    };
    FUNC0(FUNC6(&power_set_cmd));

    node_network_info.net_key = FUNC5("k", NULL, "<net key>", "network key");
    node_network_info.net_idx = FUNC3("n", NULL, "<net index>", "network key index");
    node_network_info.unicast_addr = FUNC3("u", NULL, "<unicast address>", "unicast address");
    node_network_info.dev_key = FUNC5("d", NULL, "<device key>", "device key");
    node_network_info.app_key = FUNC5("a", NULL, "<appkey>", "app key");
    node_network_info.app_idx = FUNC3("i", NULL, "<app index>", "appkey index");
    node_network_info.group_addr = FUNC3("g", NULL, "<group address>", "group address");
    node_network_info.end = FUNC1(1);

    const esp_console_cmd_t node_network_info_cmd = {
        .command = "bmnnwk",
        .help = "ble mesh node: auto join network",
        .hint = NULL,
        .func = &ble_mesh_node_enter_network_auto,
        .argtable = &node_network_info,
    };
    FUNC0(FUNC6(&node_network_info_cmd));
}