
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline unsigned int fast_read(void const *src, unsigned int bytes)
{

 unsigned char *p = (unsigned char*)src;
 switch (bytes)
 {
  case 4:
   return(*p | *(p + 1) << 8 | *(p + 2) << 16 | *(p + 3) << 24);
  case 3:
   return(*p | *(p + 1) << 8 | *(p + 2) << 16);
  case 2:
   return(*p | *(p + 1) << 8);
  case 1:
   return(*p);
 }
 return 0;






}
