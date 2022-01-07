
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* command; char* help; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;


 int ESP_ERROR_CHECK (int ) ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 int get_version ;

__attribute__((used)) static void register_version(void)
{
    const esp_console_cmd_t cmd = {
        .command = "version",
        .help = "Get version of chip and SDK",
        .hint = ((void*)0),
        .func = &get_version,
    };
    ESP_ERROR_CHECK( esp_console_cmd_register(&cmd) );
}
