
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* command; char* help; int * argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;


 int ESP_ERROR_CHECK (int ) ;
 int cmd_mdns_free ;
 int esp_console_cmd_register (TYPE_1__ const*) ;

__attribute__((used)) static void register_mdns_free(void)
{
    const esp_console_cmd_t cmd_free = {
        .command = "mdns_free",
        .help = "Stop MDNS Server",
        .hint = ((void*)0),
        .func = &cmd_mdns_free,
        .argtable = ((void*)0)
    };

    ESP_ERROR_CHECK( esp_console_cmd_register(&cmd_free) );
}
