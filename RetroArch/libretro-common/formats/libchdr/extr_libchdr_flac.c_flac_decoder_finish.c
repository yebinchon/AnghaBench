
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ compressed_length; scalar_t__ custom_header; int const* compressed_start; int decoder; } ;
typedef TYPE_1__ flac_decoder ;
typedef scalar_t__ FLAC__uint64 ;
typedef int FLAC__byte ;


 int FLAC__stream_decoder_finish (int ) ;
 int FLAC__stream_decoder_get_decode_position (int ,scalar_t__*) ;

uint32_t flac_decoder_finish(flac_decoder* decoder)
{

 FLAC__uint64 position = 0;
 FLAC__stream_decoder_get_decode_position(decoder->decoder, &position);
 FLAC__stream_decoder_finish(decoder->decoder);


 if (position == 0)
  return 0;
 if (decoder->compressed_start == (const FLAC__byte *)(decoder->custom_header))
  position -= decoder->compressed_length;
 return (uint32_t)position;
}
