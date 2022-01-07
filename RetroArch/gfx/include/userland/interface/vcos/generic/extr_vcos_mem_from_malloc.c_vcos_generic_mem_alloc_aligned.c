
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VCOS_UNSIGNED ;
struct TYPE_2__ {int size; char const* description; void* ptr; int guardword; } ;
typedef TYPE_1__ MALLOC_HEADER_T ;


 int GUARDWORDHEAP ;
 scalar_t__ VCOS_ALIGN_UP (char*,int) ;
 void* _vcos_platform_malloc (int) ;

void *vcos_generic_mem_alloc_aligned(VCOS_UNSIGNED size, VCOS_UNSIGNED align, const char *desc)
{
   int local_align = align == 0 ? 1 : align;
   int required_size = size + local_align + sizeof(MALLOC_HEADER_T);
   void *ptr = _vcos_platform_malloc(required_size);
   void *ret = ((void*)0);
   MALLOC_HEADER_T *h;

   if (ptr)
   {
      ret = (void *)VCOS_ALIGN_UP(((char *)ptr)+sizeof(MALLOC_HEADER_T), local_align);
      h = ((MALLOC_HEADER_T *)ret)-1;
      h->size = size;
      h->description = desc;
      h->guardword = GUARDWORDHEAP;
      h->ptr = ptr;
   }

   return ret;
}
