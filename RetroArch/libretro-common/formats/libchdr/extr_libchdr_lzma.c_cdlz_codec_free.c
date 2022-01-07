
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buffer; int subcode_decompressor; int base_decompressor; } ;
typedef TYPE_1__ cdlz_codec_data ;


 int free (scalar_t__) ;
 int lzma_codec_free (int *) ;
 int zlib_codec_free (int *) ;

void cdlz_codec_free(void* codec)
{
 cdlz_codec_data* cdlz = (cdlz_codec_data*) codec;

 lzma_codec_free(&cdlz->base_decompressor);



 if (cdlz->buffer)
  free(cdlz->buffer);
}
