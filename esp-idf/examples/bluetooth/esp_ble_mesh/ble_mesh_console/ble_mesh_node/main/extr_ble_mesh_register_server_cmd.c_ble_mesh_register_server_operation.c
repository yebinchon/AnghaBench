
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; void* role; void* model; void* opcode; int data; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_end (int) ;
 void* arg_int1 (char*,int *,char*,char*) ;
 int arg_str1 (char*,int *,char*,char*) ;
 int ble_mesh_module_publish_message ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ msg_publish ;

void ble_mesh_register_server_operation(void)
{
    msg_publish.data = arg_str1("d", ((void*)0), "<data>", "message data");
    msg_publish.opcode = arg_int1("o", ((void*)0), "<opcode>", "operation opcode");
    msg_publish.model = arg_int1("m", ((void*)0), "<module>", "module published to");
    msg_publish.role = arg_int1("r", ((void*)0), "<role>", "device role");
    msg_publish.end = arg_end(1);

    const esp_console_cmd_t msg_publish_cmd = {
        .command = "bmpublish",
        .help = "ble mesh: publish message",
        .hint = ((void*)0),
        .func = &ble_mesh_module_publish_message,
        .argtable = &msg_publish,
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&msg_publish_cmd));
}
