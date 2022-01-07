
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_OK ;
 int board_led_init () ;

esp_err_t board_init(void)
{
    board_led_init();
    return ESP_OK;
}
