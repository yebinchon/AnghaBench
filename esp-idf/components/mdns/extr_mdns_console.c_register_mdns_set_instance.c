
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; int instance; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_end (int) ;
 int arg_str1 (int *,int *,char*,char*) ;
 int cmd_mdns_set_instance ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ mdns_set_instance_args ;

__attribute__((used)) static void register_mdns_set_instance(void)
{
    mdns_set_instance_args.instance = arg_str1(((void*)0), ((void*)0), "<instance>", "Default instance name for services");
    mdns_set_instance_args.end = arg_end(2);

    const esp_console_cmd_t cmd_set_instance = {
        .command = "mdns_set_instance",
        .help = "Set MDNS Server Istance Name",
        .hint = ((void*)0),
        .func = &cmd_mdns_set_instance,
        .argtable = &mdns_set_instance_args
    };

    ESP_ERROR_CHECK( esp_console_cmd_register(&cmd_set_instance) );
}
