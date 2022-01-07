
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; void* instance; void* proto; void* service; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_end (int) ;
 void* arg_str1 (int *,int *,char*,char*) ;
 int cmd_mdns_service_instance_set ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ mdns_service_instance_set_args ;

__attribute__((used)) static void register_mdns_service_instance_set(void)
{
    mdns_service_instance_set_args.service = arg_str1(((void*)0), ((void*)0), "<service>", "MDNS Service");
    mdns_service_instance_set_args.proto = arg_str1(((void*)0), ((void*)0), "<proto>", "IP Protocol");
    mdns_service_instance_set_args.instance = arg_str1(((void*)0), ((void*)0), "<instance>", "Instance name");
    mdns_service_instance_set_args.end = arg_end(2);

    const esp_console_cmd_t cmd_add = {
        .command = "mdns_service_instance_set",
        .help = "Set MDNS Service Instance Name",
        .hint = ((void*)0),
        .func = &cmd_mdns_service_instance_set,
        .argtable = &mdns_service_instance_set_args
    };

    ESP_ERROR_CHECK( esp_console_cmd_register(&cmd_add) );
}
