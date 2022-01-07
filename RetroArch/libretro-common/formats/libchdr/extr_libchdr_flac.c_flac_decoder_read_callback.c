
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_2__ {scalar_t__ compressed_offset; scalar_t__ compressed_length; scalar_t__ compressed_start; scalar_t__ compressed2_length; scalar_t__ compressed2_start; } ;
typedef TYPE_1__ flac_decoder ;
typedef int FLAC__byte ;
typedef int FLAC__StreamDecoderReadStatus ;


 int FLAC__STREAM_DECODER_READ_STATUS_CONTINUE ;
 int FLAC__STREAM_DECODER_READ_STATUS_END_OF_STREAM ;
 int MIN (size_t,scalar_t__) ;
 int memcpy (int *,scalar_t__,size_t) ;

FLAC__StreamDecoderReadStatus flac_decoder_read_callback(void* client_data, FLAC__byte buffer[], size_t *bytes)
{
 flac_decoder* decoder = (flac_decoder*)client_data;

 uint32_t expected = (uint32_t)*bytes;


 uint32_t outputpos = 0;

 if (outputpos < *bytes && decoder->compressed_offset < decoder->compressed_length)
 {
  uint32_t bytes_to_copy = (uint32_t)MIN(*bytes - outputpos, decoder->compressed_length - decoder->compressed_offset);
  memcpy(&buffer[outputpos], decoder->compressed_start + decoder->compressed_offset, bytes_to_copy);
  outputpos += bytes_to_copy;
  decoder->compressed_offset += bytes_to_copy;
 }


 if (outputpos < *bytes && decoder->compressed_offset < decoder->compressed_length + decoder->compressed2_length)
 {
  uint32_t bytes_to_copy = (uint32_t)MIN(*bytes - outputpos, decoder->compressed2_length - (decoder->compressed_offset - decoder->compressed_length));
  memcpy(&buffer[outputpos], decoder->compressed2_start + decoder->compressed_offset - decoder->compressed_length, bytes_to_copy);
  outputpos += bytes_to_copy;
  decoder->compressed_offset += bytes_to_copy;
 }
 *bytes = outputpos;


 return (*bytes < expected) ? FLAC__STREAM_DECODER_READ_STATUS_END_OF_STREAM : FLAC__STREAM_DECODER_READ_STATUS_CONTINUE;
}
