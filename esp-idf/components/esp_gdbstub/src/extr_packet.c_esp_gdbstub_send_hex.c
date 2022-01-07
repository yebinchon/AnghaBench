
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_gdbstub_send_char (char const) ;

void esp_gdbstub_send_hex(int val, int bits)
{
    const char* hex_chars = "0123456789abcdef";
    for (int i = bits; i > 0; i -= 4) {
        esp_gdbstub_send_char(hex_chars[(val >> (i - 4)) & 0xf]);
    }
}
