
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint ;



__attribute__((used)) static uint8_t reverse_bits_8(uint v)
{
 uint r = v;
 uint s = 8 - 1;

 for (v >>= 1; v; v >>= 1) {
  r <<= 1;
  r |= v & 1;
  s--;
 }

 return r <<= s;
}
