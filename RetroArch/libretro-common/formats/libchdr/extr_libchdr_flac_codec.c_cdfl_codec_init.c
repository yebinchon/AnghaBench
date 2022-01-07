
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ chd_error ;
struct TYPE_4__ {int * decoder; } ;
struct TYPE_3__ {int* buffer; int swap_endian; TYPE_2__ decoder; int subcode_decompressor; } ;
typedef TYPE_1__ cdfl_codec_data ;


 int CD_FRAME_SIZE ;
 int CD_MAX_SECTOR_DATA ;
 scalar_t__ CHDERR_CODEC_ERROR ;
 scalar_t__ CHDERR_NONE ;
 scalar_t__ CHDERR_OUT_OF_MEMORY ;
 int flac_decoder_init (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ zlib_codec_init (int *,int) ;

chd_error cdfl_codec_init(void *codec, uint32_t hunkbytes)
{



   uint16_t native_endian = 0;
 cdfl_codec_data *cdfl = (cdfl_codec_data*)codec;


 if (hunkbytes % CD_FRAME_SIZE != 0)
  return CHDERR_CODEC_ERROR;

 cdfl->buffer = (uint8_t*)malloc(sizeof(uint8_t) * hunkbytes);
 if (cdfl->buffer == ((void*)0))
  return CHDERR_OUT_OF_MEMORY;


 *(uint8_t *)(&native_endian) = 1;
 cdfl->swap_endian = (native_endian & 1);
 flac_decoder_init(&cdfl->decoder);
 if (cdfl->decoder.decoder == ((void*)0))
  return CHDERR_OUT_OF_MEMORY;

 return CHDERR_NONE;
}
