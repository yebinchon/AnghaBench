
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int board_led_init () ;

void board_init(void)
{
    board_led_init();
}
