
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int signal; } ;


 int esp_gdbstub_send_char (char) ;
 int esp_gdbstub_send_end () ;
 int esp_gdbstub_send_hex (int ,int) ;
 int esp_gdbstub_send_start () ;
 TYPE_1__ s_scratch ;

__attribute__((used)) static void send_reason(void)
{
    esp_gdbstub_send_start();
    esp_gdbstub_send_char('T');
    esp_gdbstub_send_hex(s_scratch.signal, 8);
    esp_gdbstub_send_end();
}
