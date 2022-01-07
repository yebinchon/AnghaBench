
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int** allocptr; } ;
typedef TYPE_1__ zlib_allocator ;
typedef int* voidpf ;
typedef int uInt ;
typedef int UINT32 ;


 int MAX_ZLIB_ALLOCS ;
 scalar_t__ malloc (int) ;

voidpf zlib_fast_alloc(voidpf opaque, uInt items, uInt size)
{
 zlib_allocator *alloc = (zlib_allocator *)opaque;
 UINT32 *ptr;
 int i;


 size = (size * items + 0x3ff) & ~0x3ff;


 for (i = 0; i < MAX_ZLIB_ALLOCS; i++)
 {
  ptr = alloc->allocptr[i];
  if (ptr && size == *ptr)
  {

   *ptr |= 1;
   return ptr + 1;
  }
 }


 ptr = (UINT32 *)malloc(size + sizeof(UINT32));
 if (!ptr)
  return ((void*)0);


 for (i = 0; i < MAX_ZLIB_ALLOCS; i++)
  if (!alloc->allocptr[i])
  {
   alloc->allocptr[i] = ptr;
   break;
  }


 *ptr = size | 1;
 return ptr + 1;
}
