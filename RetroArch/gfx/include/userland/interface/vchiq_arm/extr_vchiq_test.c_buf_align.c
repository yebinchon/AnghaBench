
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *buf_align(char *buf, int align_size, int align)
{
   char *aligned = buf - ((intptr_t)buf & (align_size - 1)) + align;
   if (aligned < buf)
      aligned += align_size;
   return aligned;
}
