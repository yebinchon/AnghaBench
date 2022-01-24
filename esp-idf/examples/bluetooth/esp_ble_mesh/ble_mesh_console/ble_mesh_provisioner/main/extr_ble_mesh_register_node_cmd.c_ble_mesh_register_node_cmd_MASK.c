#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* command; char* help; TYPE_4__* argtable; int /*<<< orphan*/ * func; int /*<<< orphan*/ * hint; } ;
typedef  TYPE_3__ esp_console_cmd_t ;
struct TYPE_12__ {void* end; int /*<<< orphan*/  action_type; void* tx_sense_power; void* enable; void* bearer; void* pub_config; TYPE_2__* config_index; void* model_type; TYPE_1__* prov_start_address; void* input_actions; void* input_size; void* output_actions; void* output_size; void* static_val_len; int /*<<< orphan*/  static_val; } ;
struct TYPE_10__ {scalar_t__* ival; } ;
struct TYPE_9__ {int* ival; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_4__ bearer ; 
 int /*<<< orphan*/  ble_mesh_init ; 
 int /*<<< orphan*/  ble_mesh_load_oob ; 
 int /*<<< orphan*/  ble_mesh_power_set ; 
 int /*<<< orphan*/  ble_mesh_provisioner_enable_bearer ; 
 int /*<<< orphan*/  ble_mesh_register_node_cb ; 
 TYPE_4__ component ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__ const*) ; 
 TYPE_4__ oob ; 
 TYPE_4__ power_set ; 

void FUNC6(void)
{
    const esp_console_cmd_t register_cmd = {
        .command  = "bmreg",
        .help = "ble mesh: provisioner/node register callback",
        .hint = NULL,
        .func = &ble_mesh_register_node_cb,
    };
    FUNC0(FUNC5(&register_cmd));
    oob.static_val = FUNC3("s", NULL, "<value>", "Static OOB value");
    oob.static_val_len = FUNC2("l", NULL, "<length>", "Static OOB value length");
    oob.output_size = FUNC2("x", NULL, "<size>", "Maximum size of Output OOB");
    oob.output_actions = FUNC2("o", NULL, "<actions>", "Supported Output OOB Actions");
    oob.input_size = FUNC2("y", NULL, "<size>", "Maximum size of Input OOB");
    oob.input_actions = FUNC2("i", NULL, "<actions>", "Supported Input OOB Actions");
    oob.prov_start_address = FUNC2("p", NULL, "<address>", "start address assigned by provisioner");
    oob.prov_start_address->ival[0] = 0x0005;
    oob.end = FUNC1(1);

    const esp_console_cmd_t oob_cmd = {
        .command = "bmoob",
        .help = "ble mesh: provisioner/node config OOB parameters",
        .hint = NULL,
        .func = &ble_mesh_load_oob,
        .argtable = &oob,
    };
    FUNC0( FUNC5(&oob_cmd) );

    component.model_type = FUNC2("m", NULL, "<model>", "mesh model");
    component.config_index = FUNC2("c", NULL, "<index>", "mesh model op");
    component.config_index->ival[0] = 0; // set default value
    component.pub_config = FUNC2("p", NULL, "<publish>", "publish message buffer");
    component.end = FUNC1(1);

    const esp_console_cmd_t model_cmd = {
        .command = "bminit",
        .help = "ble mesh: provisioner/node init",
        .hint = NULL,
        .func = &ble_mesh_init,
        .argtable = &component,
    };
    FUNC0( FUNC5(&model_cmd) );

    bearer.bearer = FUNC2("b", NULL, "<bearer>", "supported bearer");
    bearer.enable = FUNC2("e", NULL, "<enable/disable>", "bearers node supported");
    bearer.end = FUNC1(1);

    const esp_console_cmd_t bearer_cmd = {
        .command = "bmpbearer",
        .help = "ble mesh provisioner: enable/disable different bearers",
        .hint = NULL,
        .func = &ble_mesh_provisioner_enable_bearer,
        .argtable = &bearer,
    };
    FUNC0(FUNC5(&bearer_cmd));

    power_set.tx_sense_power = FUNC2("t", NULL, "<power>", "tx power or sense");
    power_set.action_type = FUNC4("z", NULL, "<action>", "action type");
    power_set.end = FUNC1(1);

    const esp_console_cmd_t power_set_cmd = {
        .command = "bmtxpower",
        .help = "ble mesh: set tx power or sense",
        .hint = NULL,
        .func = &ble_mesh_power_set,
        .argtable = &power_set,
    };
    FUNC0(FUNC5(&power_set_cmd));
}