
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int int16_t ;
typedef scalar_t__ chd_error ;
struct TYPE_2__ {int * buffer; int decoder; int subcode_decompressor; int swap_endian; } ;
typedef TYPE_1__ cdfl_codec_data ;


 int CD_FRAME_SIZE ;
 int CD_MAX_SECTOR_DATA ;
 int CD_MAX_SUBCODE_DATA ;
 scalar_t__ CHDERR_DECOMPRESSION_ERROR ;
 scalar_t__ CHDERR_NONE ;
 int cdfl_codec_blocksize (int) ;
 int flac_decoder_decode_interleaved (int *,int *,int,int ) ;
 int flac_decoder_finish (int *) ;
 int flac_decoder_reset (int *,int,int,int ,int const*,int) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ zlib_codec_decompress (int *,int const*,int,int *,int) ;

chd_error cdfl_codec_decompress(void *codec, const uint8_t *src, uint32_t complen, uint8_t *dest, uint32_t destlen)
{
 uint32_t framenum;
   uint8_t *buffer;




 cdfl_codec_data *cdfl = (cdfl_codec_data*)codec;


 uint32_t frames = destlen / CD_FRAME_SIZE;

 if (!flac_decoder_reset(&cdfl->decoder, 44100, 2, cdfl_codec_blocksize(frames * CD_MAX_SECTOR_DATA), src, complen))
  return CHDERR_DECOMPRESSION_ERROR;
 buffer = &cdfl->buffer[0];
 if (!flac_decoder_decode_interleaved(&cdfl->decoder, (int16_t *)(buffer), frames * CD_MAX_SECTOR_DATA/4, cdfl->swap_endian))
  return CHDERR_DECOMPRESSION_ERROR;
 flac_decoder_finish(&cdfl->decoder);



 for (framenum = 0; framenum < frames; framenum++)
 {
  memcpy(&dest[framenum * CD_FRAME_SIZE], &cdfl->buffer[framenum * CD_MAX_SECTOR_DATA], CD_MAX_SECTOR_DATA);



 }

 return CHDERR_NONE;
}
