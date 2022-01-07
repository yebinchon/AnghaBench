
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** allocptr; } ;
typedef TYPE_1__ lzma_allocator ;


 int MAX_LZMA_ALLOCS ;
 int free (int *) ;

void lzma_allocator_free(void* p )
{
 lzma_allocator *codec = (lzma_allocator *)(p);


 int i;
 for (i = 0 ; i < MAX_LZMA_ALLOCS ; i++)
 {
  if (codec->allocptr[i] != ((void*)0))
   free(codec->allocptr[i]);
 }
}
