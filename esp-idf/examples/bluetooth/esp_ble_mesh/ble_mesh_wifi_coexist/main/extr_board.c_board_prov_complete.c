
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LED_B ;
 int LED_OFF ;
 int board_led_operation (int ,int ) ;

void board_prov_complete(void)
{
    board_led_operation(LED_B, LED_OFF);
}
