
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int GDBSTUB_ST_ENDPACKET ;
 int GDBSTUB_ST_ERR ;

uint32_t esp_gdbstub_gethex(const unsigned char **ptr, int bits)
{
    int i;
    int no;
    uint32_t v = 0;
    char c;
    no = bits / 4;
    if (bits == -1) {
        no = 64;
    }
    for (i = 0; i < no; i++) {
        c = **ptr;
        (*ptr)++;
        if (c >= '0' && c <= '9') {
            v <<= 4;
            v |= (c - '0');
        } else if (c >= 'A' && c <= 'F') {
            v <<= 4;
            v |= (c - 'A') + 10;
        } else if (c >= 'a' && c <= 'f') {
            v <<= 4;
            v |= (c - 'a') + 10;
        } else if (c == '#') {
            if (bits == -1) {
                (*ptr)--;
                return v;
            }
            return GDBSTUB_ST_ENDPACKET;
        } else {
            if (bits == -1) {
                (*ptr)--;
                return v;
            }
            return GDBSTUB_ST_ERR;
        }
    }
    return v;
}
