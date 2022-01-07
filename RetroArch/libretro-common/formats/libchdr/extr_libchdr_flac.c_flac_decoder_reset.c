
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int s_header_template ;
struct TYPE_4__ {int* custom_header; int compressed_length; int compressed2_length; int const* compressed2_start; int const* compressed_start; } ;
typedef TYPE_1__ flac_decoder ;
typedef int FLAC__byte ;


 int flac_decoder_internal_reset (TYPE_1__*) ;
 int memcpy (int*,int const*,int) ;

int flac_decoder_reset(flac_decoder* decoder, uint32_t sample_rate, uint8_t num_channels, uint32_t block_size, const void *buffer, uint32_t length)
{

 static const uint8_t s_header_template[0x2a] =
 {
  0x66, 0x4C, 0x61, 0x43,
  0x80,

  0x00, 0x00, 0x22,
  0x00, 0x00,
  0x00, 0x00,
  0x00, 0x00, 0x00,
  0x00, 0x00, 0x00,
  0x0A, 0xC4, 0x42, 0xF0, 0x00, 0x00, 0x00, 0x00,


  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
 };
 memcpy(decoder->custom_header, s_header_template, sizeof(s_header_template));
 decoder->custom_header[0x08] = decoder->custom_header[0x0a] = block_size >> 8;
 decoder->custom_header[0x09] = decoder->custom_header[0x0b] = block_size & 0xff;
 decoder->custom_header[0x12] = sample_rate >> 12;
 decoder->custom_header[0x13] = sample_rate >> 4;
 decoder->custom_header[0x14] = (sample_rate << 4) | ((num_channels - 1) << 1);


 decoder->compressed_start = (const FLAC__byte *)(decoder->custom_header);
 decoder->compressed_length = sizeof(decoder->custom_header);
 decoder->compressed2_start = (const FLAC__byte *)(buffer);
 decoder->compressed2_length = length;
 return flac_decoder_internal_reset(decoder);
}
