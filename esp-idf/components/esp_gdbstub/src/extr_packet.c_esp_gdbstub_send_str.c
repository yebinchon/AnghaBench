
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_gdbstub_send_char (char const) ;

void esp_gdbstub_send_str(const char *c)
{
    while (*c != 0) {
        esp_gdbstub_send_char(*c);
        c++;
    }
}
