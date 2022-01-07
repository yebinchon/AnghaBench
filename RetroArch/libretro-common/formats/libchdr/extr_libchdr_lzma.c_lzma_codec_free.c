
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int allocator; int decoder; } ;
typedef TYPE_1__ lzma_codec_data ;
typedef int lzma_allocator ;
typedef int ISzAlloc ;


 int LzmaDec_Free (int *,int *) ;
 int lzma_allocator_free (int *) ;

void lzma_codec_free(void* codec)
{
 lzma_codec_data* lzma_codec = (lzma_codec_data*) codec;
 lzma_allocator* alloc = &lzma_codec->allocator;


 lzma_allocator_free(alloc);
 LzmaDec_Free(&lzma_codec->decoder, (ISzAlloc*)&lzma_codec->allocator);
}
