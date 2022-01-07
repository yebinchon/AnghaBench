
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;


 int* __CFUniCharCombiningBitmap ;

int
unicode_combinable(u_int16_t character)
{
 const u_int8_t *bitmap = __CFUniCharCombiningBitmap;
 u_int8_t value;

 if (character < 0x0300)
  return (0);

 value = bitmap[(character >> 8) & 0xFF];

 if (value == 0xFF) {
  return (1);
 } else if (value) {
  bitmap = bitmap + ((value - 1) * 32) + 256;
  return (bitmap[(character & 0xFF) / 8] & (1 << (character % 8)) ? 1 : 0);
 }
 return (0);
}
