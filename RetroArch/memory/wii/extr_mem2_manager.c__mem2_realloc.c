
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ __lwp_heap_block_size (int *,void*) ;
 int _mem2_free (void*) ;
 void* _mem2_malloc (scalar_t__) ;
 int gx_mem2_heap ;
 int memcpy (void*,void*,scalar_t__) ;

void *_mem2_realloc(void *ptr, uint32_t newsize)
{
   uint32_t size;
   void *newptr = ((void*)0);

   if (!ptr)
      return _mem2_malloc(newsize);

   if (newsize == 0)
   {
      _mem2_free(ptr);
      return ((void*)0);
   }

   size = __lwp_heap_block_size(&gx_mem2_heap, ptr);

   if (size > newsize)
      size = newsize;

   newptr = _mem2_malloc(newsize);

   if (!newptr)
      return ((void*)0);

   memcpy(newptr, ptr, size);
   _mem2_free(ptr);

   return newptr;
}
