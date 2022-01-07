
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned gl_core_num_miplevels(unsigned width, unsigned height)
{
   unsigned levels = 1;
   if (width < height)
      width = height;
   while (width > 1)
   {
      levels++;
      width >>= 1;
   }
   return levels;
}
