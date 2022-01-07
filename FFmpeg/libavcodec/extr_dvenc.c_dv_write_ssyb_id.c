
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int dv_write_ssyb_id(uint8_t syb_num, uint8_t fr, uint8_t *buf)
{
    if (syb_num == 0 || syb_num == 6) {
        buf[0] = (fr << 7) |
                 (0 << 4) |
                 0x0f;
    } else if (syb_num == 11) {
        buf[0] = (fr << 7) |
                 0x7f;
    } else {
        buf[0] = (fr << 7) |
                 (0 << 4) |
                 0x0f;
    }
    buf[1] = 0xf0 |
             (syb_num & 0x0f);
    buf[2] = 0xff;
    return 3;
}
