
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_gdbstub_putchar (char) ;
 scalar_t__ s_chsum ;

void esp_gdbstub_send_start(void)
{
    s_chsum = 0;
    esp_gdbstub_putchar('$');
}
