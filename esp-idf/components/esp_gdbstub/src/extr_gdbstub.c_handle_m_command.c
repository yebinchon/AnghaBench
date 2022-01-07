
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef intptr_t uint32_t ;


 intptr_t esp_gdbstub_gethex (unsigned char const**,int) ;
 int esp_gdbstub_readmem (intptr_t) ;
 int esp_gdbstub_send_end () ;
 int esp_gdbstub_send_hex (int,int) ;
 int esp_gdbstub_send_start () ;
 int esp_gdbstub_send_str_packet (char*) ;

__attribute__((used)) static void handle_m_command(const unsigned char* cmd, int len)
{
    intptr_t addr = (intptr_t) esp_gdbstub_gethex(&cmd, -1);
    cmd++;
    uint32_t size = esp_gdbstub_gethex(&cmd, -1);

    if (esp_gdbstub_readmem(addr) < 0 || esp_gdbstub_readmem(addr + size - 1) < 0) {
        esp_gdbstub_send_str_packet("E01");
        return;
    }

    esp_gdbstub_send_start();
    for (int i = 0; i < size; ++i) {
        int b = esp_gdbstub_readmem(addr++);
        esp_gdbstub_send_hex(b, 8);
    }
    esp_gdbstub_send_end();
}
