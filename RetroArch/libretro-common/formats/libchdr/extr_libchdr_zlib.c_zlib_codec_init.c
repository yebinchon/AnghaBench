
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * opaque; int zfree; int zalloc; scalar_t__ avail_in; int * next_in; } ;
struct TYPE_4__ {TYPE_3__ inflater; int allocator; } ;
typedef TYPE_1__ zlib_codec_data ;
typedef int uint32_t ;
typedef int chd_error ;
typedef int Bytef ;


 int CHDERR_CODEC_ERROR ;
 int CHDERR_NONE ;
 int CHDERR_OUT_OF_MEMORY ;
 int MAX_WBITS ;
 int Z_MEM_ERROR ;
 int Z_OK ;
 int inflateInit2 (TYPE_3__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int zlib_fast_alloc ;
 int zlib_fast_free ;

chd_error zlib_codec_init(void *codec, uint32_t hunkbytes)
{
 int zerr;
 chd_error err;
 zlib_codec_data *data = (zlib_codec_data*)codec;


 memset(data, 0, sizeof(zlib_codec_data));


 data->inflater.next_in = (Bytef *)data;
 data->inflater.avail_in = 0;
 data->inflater.zalloc = zlib_fast_alloc;
 data->inflater.zfree = zlib_fast_free;
 data->inflater.opaque = &data->allocator;
 zerr = inflateInit2(&data->inflater, -MAX_WBITS);


 if (zerr == Z_MEM_ERROR)
  err = CHDERR_OUT_OF_MEMORY;
 else if (zerr != Z_OK)
  err = CHDERR_CODEC_ERROR;
 else
  err = CHDERR_NONE;

 return err;
}
