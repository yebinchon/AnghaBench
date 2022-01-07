
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_gdbstub_putchar (char) ;
 int esp_gdbstub_send_hex (int ,int) ;
 int s_chsum ;

void esp_gdbstub_send_end(void)
{
    esp_gdbstub_putchar('#');
    esp_gdbstub_send_hex(s_chsum, 8);
}
