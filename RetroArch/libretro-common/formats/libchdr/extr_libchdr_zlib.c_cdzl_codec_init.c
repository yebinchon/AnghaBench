
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ chd_error ;
struct TYPE_2__ {int subcode_decompressor; int base_decompressor; int * buffer; } ;
typedef TYPE_1__ cdzl_codec_data ;


 int CD_FRAME_SIZE ;
 int CD_MAX_SECTOR_DATA ;
 scalar_t__ CHDERR_CODEC_ERROR ;
 scalar_t__ CHDERR_NONE ;
 scalar_t__ CHDERR_OUT_OF_MEMORY ;
 scalar_t__ malloc (int) ;
 scalar_t__ zlib_codec_init (int *,int) ;

chd_error cdzl_codec_init(void *codec, uint32_t hunkbytes)
{
 chd_error ret;
 cdzl_codec_data* cdzl = (cdzl_codec_data*)codec;


 if (hunkbytes % CD_FRAME_SIZE != 0)
  return CHDERR_CODEC_ERROR;

 cdzl->buffer = (uint8_t*)malloc(sizeof(uint8_t) * hunkbytes);
 if (cdzl->buffer == ((void*)0))
  return CHDERR_OUT_OF_MEMORY;

 ret = zlib_codec_init(&cdzl->base_decompressor, (hunkbytes / CD_FRAME_SIZE) * CD_MAX_SECTOR_DATA);
 if (ret != CHDERR_NONE)
  return ret;







 return CHDERR_NONE;
}
