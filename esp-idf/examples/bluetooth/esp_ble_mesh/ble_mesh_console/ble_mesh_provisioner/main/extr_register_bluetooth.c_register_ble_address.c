
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* command; char* help; int func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
typedef int esp_console_cmd_func_t ;


 int ESP_ERROR_CHECK (int ) ;
 int bt_mac ;
 int esp_console_cmd_register (TYPE_1__ const*) ;

void register_ble_address(void)
{
    const esp_console_cmd_t cmd = {
        .command = "btmac",
        .help = "BLE address",
        .hint = ((void*)0),
        .func = (esp_console_cmd_func_t)&bt_mac,
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&cmd));
}
