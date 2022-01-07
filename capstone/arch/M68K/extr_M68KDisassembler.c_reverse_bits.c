
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int uint ;



__attribute__((used)) static uint16_t reverse_bits(uint v)
{
 uint r = v;
 uint s = 16 - 1;

 for (v >>= 1; v; v >>= 1) {
  r <<= 1;
  r |= v & 1;
  s--;
 }

 return r <<= s;
}
