
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int** allocptr; } ;
typedef TYPE_1__ zlib_allocator ;
typedef scalar_t__ voidpf ;
typedef int UINT32 ;


 int MAX_ZLIB_ALLOCS ;

void zlib_fast_free(voidpf opaque, voidpf address)
{
 zlib_allocator *alloc = (zlib_allocator *)opaque;
 UINT32 *ptr = (UINT32 *)address - 1;
 int i;


 for (i = 0; i < MAX_ZLIB_ALLOCS; i++)
  if (ptr == alloc->allocptr[i])
  {

   *ptr &= ~1;
   return;
  }
}
