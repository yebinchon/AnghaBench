
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int regfile; } ;


 int esp_gdbstub_send_end () ;
 int esp_gdbstub_send_hex (int ,int) ;
 int esp_gdbstub_send_start () ;
 int gdbstub_hton (int ) ;
 TYPE_1__ s_scratch ;

__attribute__((used)) static void handle_g_command(const unsigned char* cmd, int len)
{
    uint32_t *p = (uint32_t *) &s_scratch.regfile;
    esp_gdbstub_send_start();
    for (int i = 0; i < sizeof(s_scratch.regfile) / sizeof(*p); ++i) {
        esp_gdbstub_send_hex(gdbstub_hton(*p++), 32);
    }
    esp_gdbstub_send_end();
}
