
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ guardword; int ptr; } ;
typedef TYPE_1__ MALLOC_HEADER_T ;


 scalar_t__ GUARDWORDHEAP ;
 int _vcos_platform_free (int ) ;
 int vcos_assert (int) ;

void vcos_generic_mem_free(void *ptr)
{
   MALLOC_HEADER_T *h;
   if (! ptr) return;

   h = ((MALLOC_HEADER_T *)ptr)-1;
   vcos_assert(h->guardword == GUARDWORDHEAP);
   _vcos_platform_free(h->ptr);
}
