
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GDBSTUB_CMD_BUFLEN ;
 int GDBSTUB_ST_ERR ;
 int GDBSTUB_ST_OK ;
 unsigned char esp_gdbstub_getchar () ;
 unsigned char esp_gdbstub_gethex (unsigned char const**,int) ;
 int esp_gdbstub_putchar (char) ;
 unsigned char* s_cmd ;

int esp_gdbstub_read_command(unsigned char **out_cmd, size_t *out_size)
{
    unsigned char c;
    unsigned char chsum = 0;
    unsigned char sentchs[2];
    int p = 0;
    c = esp_gdbstub_getchar();
    if (c != '$') {
        return c;
    }
    while (1) {
        c = esp_gdbstub_getchar();
        if (c == '#') {

            s_cmd[p] = 0;
            break;
        }
        chsum += c;
        if (c == '$') {

            chsum = 0;
            p = 0;
            continue;
        }
        if (c == '}') {

            c = esp_gdbstub_getchar();
            chsum += c;
            c ^= 0x20;
        }
        s_cmd[p++] = c;
        if (p >= GDBSTUB_CMD_BUFLEN) {
            return GDBSTUB_ST_ERR;
        }
    }

    sentchs[0] = esp_gdbstub_getchar();
    sentchs[1] = esp_gdbstub_getchar();
    const unsigned char* c_ptr = &sentchs[0];
    unsigned char rchsum = esp_gdbstub_gethex(&c_ptr, 8);
    if (rchsum != chsum) {
        esp_gdbstub_putchar('-');
        return GDBSTUB_ST_ERR;
    } else {
        esp_gdbstub_putchar('+');
        *out_cmd = s_cmd;
        *out_size = p;
        return GDBSTUB_ST_OK;
    }
}
