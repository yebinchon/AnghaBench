
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef void* int16_t ;
struct TYPE_6__ {int channels; void*** uncompressed_start; int uncompressed_offset; int uncompressed_length; scalar_t__ uncompressed_swap; } ;
typedef TYPE_2__ flac_decoder ;
struct TYPE_5__ {int channels; int blocksize; } ;
struct TYPE_7__ {TYPE_1__ header; } ;
typedef scalar_t__ FLAC__int32 ;
typedef int FLAC__StreamDecoderWriteStatus ;
typedef TYPE_3__ FLAC__Frame ;


 int FLAC__STREAM_DECODER_WRITE_STATUS_CONTINUE ;
 int assert (int) ;

FLAC__StreamDecoderWriteStatus flac_decoder_write_callback(void *client_data, const FLAC__Frame *frame, const FLAC__int32 * const buffer[])
{
 int sampnum, chan;
   int shift, blocksize;
 flac_decoder * decoder = (flac_decoder *)client_data;

 assert(frame->header.channels == decoder->channels);


 shift = decoder->uncompressed_swap ? 8 : 0;
 blocksize = frame->header.blocksize;
 if (decoder->uncompressed_start[1] == ((void*)0))
 {
  int16_t *dest = decoder->uncompressed_start[0] + decoder->uncompressed_offset * frame->header.channels;
  for (sampnum = 0; sampnum < blocksize && decoder->uncompressed_offset < decoder->uncompressed_length; sampnum++, decoder->uncompressed_offset++)
   for (chan = 0; chan < frame->header.channels; chan++)
    *dest++ = (int16_t)((((uint16_t)buffer[chan][sampnum]) << shift) | (((uint16_t)buffer[chan][sampnum]) >> shift));
 }


 else
 {
  for (sampnum = 0; sampnum < blocksize && decoder->uncompressed_offset < decoder->uncompressed_length; sampnum++, decoder->uncompressed_offset++)
   for (chan = 0; chan < frame->header.channels; chan++)
    if (decoder->uncompressed_start[chan] != ((void*)0))
     decoder->uncompressed_start[chan][decoder->uncompressed_offset] = (int16_t) ( (((uint16_t)(buffer[chan][sampnum])) << shift) | ( ((uint16_t)(buffer[chan][sampnum])) >> shift) );
 }
 return FLAC__STREAM_DECODER_WRITE_STATUS_CONTINUE;
}
