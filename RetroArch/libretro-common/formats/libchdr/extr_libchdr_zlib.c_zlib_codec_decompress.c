
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ total_out; scalar_t__ avail_out; int * next_out; scalar_t__ total_in; scalar_t__ avail_in; int * next_in; } ;
struct TYPE_4__ {TYPE_2__ inflater; } ;
typedef TYPE_1__ zlib_codec_data ;
typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int chd_error ;
typedef int Bytef ;


 int CHDERR_DECOMPRESSION_ERROR ;
 int CHDERR_NONE ;
 int Z_FINISH ;
 int Z_OK ;
 int inflate (TYPE_2__*,int ) ;
 int inflateReset (TYPE_2__*) ;

chd_error zlib_codec_decompress(void *codec, const uint8_t *src, uint32_t complen, uint8_t *dest, uint32_t destlen)
{
 zlib_codec_data *data = (zlib_codec_data *)codec;
 int zerr;


 data->inflater.next_in = (Bytef *)src;
 data->inflater.avail_in = complen;
 data->inflater.total_in = 0;
 data->inflater.next_out = (Bytef *)dest;
 data->inflater.avail_out = destlen;
 data->inflater.total_out = 0;
 zerr = inflateReset(&data->inflater);
 if (zerr != Z_OK)
  return CHDERR_DECOMPRESSION_ERROR;


 zerr = inflate(&data->inflater, Z_FINISH);
    (void)zerr;
 if (data->inflater.total_out != destlen)
  return CHDERR_DECOMPRESSION_ERROR;

 return CHDERR_NONE;
}
