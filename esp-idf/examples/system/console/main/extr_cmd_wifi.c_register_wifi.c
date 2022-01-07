
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; int password; int ssid; int timeout; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_end (int) ;
 int arg_int0 (int *,char*,char*,char*) ;
 int arg_str0 (int *,int *,char*,char*) ;
 int arg_str1 (int *,int *,char*,char*) ;
 int connect ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ join_args ;

void register_wifi(void)
{
    join_args.timeout = arg_int0(((void*)0), "timeout", "<t>", "Connection timeout, ms");
    join_args.ssid = arg_str1(((void*)0), ((void*)0), "<ssid>", "SSID of AP");
    join_args.password = arg_str0(((void*)0), ((void*)0), "<pass>", "PSK of AP");
    join_args.end = arg_end(2);

    const esp_console_cmd_t join_cmd = {
        .command = "join",
        .help = "Join WiFi AP as a station",
        .hint = ((void*)0),
        .func = &connect,
        .argtable = &join_args
    };

    ESP_ERROR_CHECK( esp_console_cmd_register(&join_cmd) );
}
