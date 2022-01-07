
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {char* command; char* help; TYPE_4__* argtable; int * func; int * hint; } ;
typedef TYPE_3__ esp_console_cmd_t ;
struct TYPE_12__ {void* end; int action_type; void* tx_sense_power; void* enable; void* bearer; void* pub_config; TYPE_2__* config_index; void* model_type; TYPE_1__* prov_start_address; void* input_actions; void* input_size; void* output_actions; void* output_size; void* static_val_len; int static_val; } ;
struct TYPE_10__ {scalar_t__* ival; } ;
struct TYPE_9__ {int* ival; } ;


 int ESP_ERROR_CHECK (int ) ;
 void* arg_end (int) ;
 void* arg_int0 (char*,int *,char*,char*) ;
 int arg_str0 (char*,int *,char*,char*) ;
 int arg_str1 (char*,int *,char*,char*) ;
 TYPE_4__ bearer ;
 int ble_mesh_init ;
 int ble_mesh_load_oob ;
 int ble_mesh_power_set ;
 int ble_mesh_provisioner_enable_bearer ;
 int ble_mesh_register_node_cb ;
 TYPE_4__ component ;
 int esp_console_cmd_register (TYPE_3__ const*) ;
 TYPE_4__ oob ;
 TYPE_4__ power_set ;

void ble_mesh_register_node_cmd(void)
{
    const esp_console_cmd_t register_cmd = {
        .command = "bmreg",
        .help = "ble mesh: provisioner/node register callback",
        .hint = ((void*)0),
        .func = &ble_mesh_register_node_cb,
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&register_cmd));
    oob.static_val = arg_str0("s", ((void*)0), "<value>", "Static OOB value");
    oob.static_val_len = arg_int0("l", ((void*)0), "<length>", "Static OOB value length");
    oob.output_size = arg_int0("x", ((void*)0), "<size>", "Maximum size of Output OOB");
    oob.output_actions = arg_int0("o", ((void*)0), "<actions>", "Supported Output OOB Actions");
    oob.input_size = arg_int0("y", ((void*)0), "<size>", "Maximum size of Input OOB");
    oob.input_actions = arg_int0("i", ((void*)0), "<actions>", "Supported Input OOB Actions");
    oob.prov_start_address = arg_int0("p", ((void*)0), "<address>", "start address assigned by provisioner");
    oob.prov_start_address->ival[0] = 0x0005;
    oob.end = arg_end(1);

    const esp_console_cmd_t oob_cmd = {
        .command = "bmoob",
        .help = "ble mesh: provisioner/node config OOB parameters",
        .hint = ((void*)0),
        .func = &ble_mesh_load_oob,
        .argtable = &oob,
    };
    ESP_ERROR_CHECK( esp_console_cmd_register(&oob_cmd) );

    component.model_type = arg_int0("m", ((void*)0), "<model>", "mesh model");
    component.config_index = arg_int0("c", ((void*)0), "<index>", "mesh model op");
    component.config_index->ival[0] = 0;
    component.pub_config = arg_int0("p", ((void*)0), "<publish>", "publish message buffer");
    component.end = arg_end(1);

    const esp_console_cmd_t model_cmd = {
        .command = "bminit",
        .help = "ble mesh: provisioner/node init",
        .hint = ((void*)0),
        .func = &ble_mesh_init,
        .argtable = &component,
    };
    ESP_ERROR_CHECK( esp_console_cmd_register(&model_cmd) );

    bearer.bearer = arg_int0("b", ((void*)0), "<bearer>", "supported bearer");
    bearer.enable = arg_int0("e", ((void*)0), "<enable/disable>", "bearers node supported");
    bearer.end = arg_end(1);

    const esp_console_cmd_t bearer_cmd = {
        .command = "bmpbearer",
        .help = "ble mesh provisioner: enable/disable different bearers",
        .hint = ((void*)0),
        .func = &ble_mesh_provisioner_enable_bearer,
        .argtable = &bearer,
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&bearer_cmd));

    power_set.tx_sense_power = arg_int0("t", ((void*)0), "<power>", "tx power or sense");
    power_set.action_type = arg_str1("z", ((void*)0), "<action>", "action type");
    power_set.end = arg_end(1);

    const esp_console_cmd_t power_set_cmd = {
        .command = "bmtxpower",
        .help = "ble mesh: set tx power or sense",
        .hint = ((void*)0),
        .func = &ble_mesh_power_set,
        .argtable = &power_set,
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&power_set_cmd));
}
