
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buffer; int subcode_decompressor; int decoder; } ;
typedef TYPE_1__ cdfl_codec_data ;


 int flac_decoder_free (int *) ;
 int free (scalar_t__) ;
 int zlib_codec_free (int *) ;

void cdfl_codec_free(void *codec)
{
 cdfl_codec_data *cdfl = (cdfl_codec_data*)codec;
 flac_decoder_free(&cdfl->decoder);



 if (cdfl->buffer)
  free(cdfl->buffer);
}
