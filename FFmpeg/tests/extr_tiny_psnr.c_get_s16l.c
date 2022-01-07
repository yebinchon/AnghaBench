
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int16_t ;



__attribute__((used)) static int16_t get_s16l(uint8_t *p)
{
    union {
        uint16_t u;
        int16_t s;
    } v;
    v.u = p[0] | p[1] << 8;
    return v.s;
}
