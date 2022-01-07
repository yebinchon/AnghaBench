
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_gdbstub_putchar (char) ;
 char s_chsum ;

void esp_gdbstub_send_char(char c)
{
    if (c == '#' || c == '$' || c == '}' || c == '*') {
        esp_gdbstub_putchar('}');
        esp_gdbstub_putchar(c ^ 0x20);
        s_chsum += (c ^ 0x20) + '}';
    } else {
        esp_gdbstub_putchar(c);
        s_chsum += c;
    }
}
