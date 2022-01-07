
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AV_RN32 (int*) ;

__attribute__((used)) static uint8_t* mxg_find_startmarker(uint8_t *p, uint8_t *end)
{
    for (; p < end - 3; p += 4) {
        uint32_t x = AV_RN32(p);

        if (x & (~(x+0x01010101)) & 0x80808080) {
            if (p[0] == 0xff) {
                return p;
            } else if (p[1] == 0xff) {
                return p+1;
            } else if (p[2] == 0xff) {
                return p+2;
            } else if (p[3] == 0xff) {
                return p+3;
            }
        }
    }

    for (; p < end; ++p) {
        if (*p == 0xff) return p;
    }

    return end;
}
