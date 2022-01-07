
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int16_t ;
struct TYPE_3__ {scalar_t__ uncompressed_offset; scalar_t__ uncompressed_length; int uncompressed_swap; int decoder; int ** uncompressed_start; } ;
typedef TYPE_1__ flac_decoder ;


 int FLAC__stream_decoder_process_single (int ) ;
 int memset (int **,int ,int) ;

int flac_decoder_decode_interleaved(flac_decoder* decoder, int16_t *samples, uint32_t num_samples, int swap_endian)
{

 memset(decoder->uncompressed_start, 0, sizeof(decoder->uncompressed_start));
 decoder->uncompressed_start[0] = samples;
 decoder->uncompressed_offset = 0;
 decoder->uncompressed_length = num_samples;
 decoder->uncompressed_swap = swap_endian;


 while (decoder->uncompressed_offset < decoder->uncompressed_length)
  if (!FLAC__stream_decoder_process_single(decoder->decoder))
   return 0;
 return 1;
}
