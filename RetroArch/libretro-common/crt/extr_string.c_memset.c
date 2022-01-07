
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memset(void *dst, int val, size_t count)
{
   void *start = dst;






   while (count--)
   {
      *(char*)dst = (char)val;
      dst = (char*)dst + 1;
   }


   return start;
}
