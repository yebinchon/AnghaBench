
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 void* _mem2_malloc (int) ;
 int memset (void*,int ,int) ;

void *_mem2_calloc(uint32_t num, uint32_t size)
{
   void *ptr = _mem2_malloc(num * size);

   if (!ptr)
      return ((void*)0);

   memset(ptr, 0, num * size);
   return ptr;
}
