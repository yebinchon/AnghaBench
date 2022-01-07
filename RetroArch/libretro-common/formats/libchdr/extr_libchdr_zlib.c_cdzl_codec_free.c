
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buffer; int subcode_decompressor; int base_decompressor; } ;
typedef TYPE_1__ cdzl_codec_data ;


 int free (scalar_t__) ;
 int zlib_codec_free (int *) ;

void cdzl_codec_free(void *codec)
{
 cdzl_codec_data* cdzl = (cdzl_codec_data*)codec;

 zlib_codec_free(&cdzl->base_decompressor);



 if (cdzl->buffer)
  free(cdzl->buffer);
}
