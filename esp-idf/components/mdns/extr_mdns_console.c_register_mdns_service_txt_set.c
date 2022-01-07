
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; void* value; void* var; void* proto; void* service; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_end (int) ;
 void* arg_str1 (int *,int *,char*,char*) ;
 int cmd_mdns_service_txt_set ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ mdns_txt_set_args ;

__attribute__((used)) static void register_mdns_service_txt_set(void)
{
    mdns_txt_set_args.service = arg_str1(((void*)0), ((void*)0), "<service>", "MDNS Service");
    mdns_txt_set_args.proto = arg_str1(((void*)0), ((void*)0), "<proto>", "IP Protocol");
    mdns_txt_set_args.var = arg_str1(((void*)0), ((void*)0), "<var>", "Item Name");
    mdns_txt_set_args.value = arg_str1(((void*)0), ((void*)0), "<value>", "Item Value");
    mdns_txt_set_args.end = arg_end(2);

    const esp_console_cmd_t cmd_txt_set = {
        .command = "mdns_service_txt_set",
        .help = "Add/Set MDNS service TXT item",
        .hint = ((void*)0),
        .func = &cmd_mdns_service_txt_set,
        .argtable = &mdns_txt_set_args
    };

    ESP_ERROR_CHECK( esp_console_cmd_register(&cmd_txt_set) );
}
