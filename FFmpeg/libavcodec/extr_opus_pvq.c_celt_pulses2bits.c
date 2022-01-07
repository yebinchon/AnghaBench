
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int celt_pulses2bits(const uint8_t *cache, int pulses)
{

   return (pulses == 0) ? 0 : cache[pulses] + 1;
}
