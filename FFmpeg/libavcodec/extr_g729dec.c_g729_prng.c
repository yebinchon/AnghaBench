
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static inline uint16_t g729_prng(uint16_t value)
{
    return 31821 * value + 13849;
}
