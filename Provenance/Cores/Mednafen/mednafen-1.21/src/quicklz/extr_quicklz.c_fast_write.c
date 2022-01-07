
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline void fast_write(unsigned int f, void *dst, unsigned int bytes)
{

 unsigned char *p = (unsigned char*)dst;

 switch (bytes)
 {
  case 4:
   *p = (unsigned char)f;
   *(p + 1) = (unsigned char)(f >> 8);
   *(p + 2) = (unsigned char)(f >> 16);
   *(p + 3) = (unsigned char)(f >> 24);
   return;
  case 3:
   *p = (unsigned char)f;
   *(p + 1) = (unsigned char)(f >> 8);
   *(p + 2) = (unsigned char)(f >> 16);
   return;
  case 2:
   *p = (unsigned char)f;
   *(p + 1) = (unsigned char)(f >> 8);
   return;
  case 1:
   *p = (unsigned char)f;
   return;
 }
}
