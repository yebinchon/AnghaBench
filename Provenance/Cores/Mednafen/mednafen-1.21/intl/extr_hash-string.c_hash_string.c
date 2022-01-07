
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASHWORDBITS ;

unsigned long int
__hash_string (const char *str_param)
{
  unsigned long int hval, g;
  const char *str = str_param;


  hval = 0;
  while (*str != '\0')
    {
      hval <<= 4;
      hval += (unsigned char) *str++;
      g = hval & ((unsigned long int) 0xf << (HASHWORDBITS - 4));
      if (g != 0)
 {
   hval ^= g >> (HASHWORDBITS - 8);
   hval ^= g;
 }
    }
  return hval;
}
