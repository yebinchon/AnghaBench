
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int hex2byte (char const*) ;

int hexstr_2_bin(const char *hex, uint8_t *buf, uint32_t len)
{
    uint32_t i;
    int a;
    const char *ipos = hex;
    uint8_t *opos = buf;

    for (i = 0; i < len; i++) {
        a = hex2byte(ipos);
        if (a < 0) {
            return -1;
        }
        *opos ++ = a;
        ipos += 2;
    }
    return 0;
}
