
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Free; int Alloc; int allocptr; } ;
typedef TYPE_1__ lzma_allocator ;


 int lzma_fast_alloc ;
 int lzma_fast_free ;
 int memset (int ,int ,int) ;

void lzma_allocator_init(void* p)
{
 lzma_allocator *codec = (lzma_allocator *)(p);


 memset(codec->allocptr, 0, sizeof(codec->allocptr));
 codec->Alloc = lzma_fast_alloc;
 codec->Free = lzma_fast_free;
}
