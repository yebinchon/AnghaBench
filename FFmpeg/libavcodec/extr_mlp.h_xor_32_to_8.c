
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static inline uint8_t xor_32_to_8(uint32_t value)
{
    value ^= value >> 16;
    value ^= value >> 8;
    return value;
}
