
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; void* instance; void* hostname; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_end (int) ;
 void* arg_str0 (char*,char*,char*,char*) ;
 int cmd_mdns_init ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ mdns_init_args ;

__attribute__((used)) static void register_mdns_init(void)
{
    mdns_init_args.hostname = arg_str0("h", "hostname", "<hostname>", "Hostname that the server will advertise");
    mdns_init_args.instance = arg_str0("i", "instance", "<instance>", "Default instance name for services");
    mdns_init_args.end = arg_end(2);

    const esp_console_cmd_t cmd_init = {
        .command = "mdns_init",
        .help = "Start MDNS Server",
        .hint = ((void*)0),
        .func = &cmd_mdns_init,
        .argtable = &mdns_init_args
    };

    ESP_ERROR_CHECK( esp_console_cmd_register(&cmd_init) );
}
