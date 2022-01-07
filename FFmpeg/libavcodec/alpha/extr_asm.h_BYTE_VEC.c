
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uint64_t BYTE_VEC(uint64_t x)
{
    x |= x << 8;
    x |= x << 16;
    x |= x << 32;
    return x;
}
