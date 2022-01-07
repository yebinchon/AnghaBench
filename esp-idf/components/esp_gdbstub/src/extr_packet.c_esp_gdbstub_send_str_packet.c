
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_gdbstub_send_end () ;
 int esp_gdbstub_send_start () ;
 int esp_gdbstub_send_str (char const*) ;

void esp_gdbstub_send_str_packet(const char* str)
{
    esp_gdbstub_send_start();
    if (str != ((void*)0)) {
        esp_gdbstub_send_str(str);
    }
    esp_gdbstub_send_end();
}
