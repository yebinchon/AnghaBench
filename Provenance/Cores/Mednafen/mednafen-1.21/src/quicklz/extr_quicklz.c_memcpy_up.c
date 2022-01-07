
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char const*,unsigned int) ;

__attribute__((used)) static __inline void memcpy_up(unsigned char *dst, const unsigned char *src, unsigned int n)
{



 if(n > 8 && src + n < dst)
  memcpy(dst, src, n);
 else
 {
  unsigned char *end = dst + n;
  while(dst < end)
  {
   *dst = *src;
   dst++;
   src++;
  }
 }
}
