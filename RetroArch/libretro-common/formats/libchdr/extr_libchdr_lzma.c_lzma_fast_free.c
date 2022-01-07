
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int** allocptr; } ;
typedef TYPE_1__ lzma_allocator ;
typedef scalar_t__ address ;


 int MAX_LZMA_ALLOCS ;

__attribute__((used)) static void lzma_fast_free(void *p, void *address)
{
 int scan;
   uint32_t *ptr;
   lzma_allocator *codec;
 if (address == ((void*)0))
  return;

 codec = (lzma_allocator *)(p);


 ptr = (uint32_t *)(address) - 1;
 for (scan = 0; scan < MAX_LZMA_ALLOCS; scan++)
 {
  if (ptr == codec->allocptr[scan])
  {

   *ptr &= ~1;
   return;
  }
 }
}
