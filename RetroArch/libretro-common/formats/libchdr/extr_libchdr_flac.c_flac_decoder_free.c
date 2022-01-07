
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * decoder; } ;
typedef TYPE_1__ flac_decoder ;


 int FLAC__stream_decoder_delete (int *) ;

void flac_decoder_free(flac_decoder* decoder)
{
 if ((decoder != ((void*)0)) && (decoder->decoder != ((void*)0)))
  FLAC__stream_decoder_delete(decoder->decoder);
}
