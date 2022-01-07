
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int NBITS ;

__attribute__((used)) static inline unsigned color_hash(uint32_t color)
{
    const uint8_t r = color >> 16 & ((1<<NBITS)-1);
    const uint8_t g = color >> 8 & ((1<<NBITS)-1);
    const uint8_t b = color & ((1<<NBITS)-1);
    return r<<(NBITS*2) | g<<NBITS | b;
}
