
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;



__attribute__((used)) static inline int8_t ff_u8_to_s8(uint8_t a)
{
    union {
        uint8_t u8;
        int8_t s8;
    } b;
    b.u8 = a;
    return b.s8;
}
