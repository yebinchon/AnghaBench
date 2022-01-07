
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;

void *memalign_alloc(size_t boundary, size_t size)
{
   void **place = ((void*)0);
   uintptr_t addr = 0;
   void *ptr = (void*)malloc(boundary + size + sizeof(uintptr_t));
   if (!ptr)
      return ((void*)0);

   addr = ((uintptr_t)ptr + sizeof(uintptr_t) + boundary)
      & ~(boundary - 1);
   place = (void**)addr;
   place[-1] = ptr;

   return (void*)addr;
}
