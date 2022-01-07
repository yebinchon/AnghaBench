
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_3__ {char* command; char* help; int * func; } ;
typedef TYPE_1__ esp_console_cmd_t ;


 int esp_console_cmd_register (TYPE_1__*) ;
 int help_command ;

esp_err_t esp_console_register_help_command(void)
{
    esp_console_cmd_t command = {
        .command = "help",
        .help = "Print the list of registered commands",
        .func = &help_command
    };
    return esp_console_cmd_register(&command);
}
