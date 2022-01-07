
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int decoder; int allocator; } ;
typedef TYPE_1__ lzma_codec_data ;
typedef int lzma_allocator ;
typedef int decoder_props ;
typedef int chd_error ;
struct TYPE_7__ {int level; int reduceSize; } ;
typedef int ISzAlloc ;
typedef TYPE_2__ CLzmaEncProps ;
typedef int CLzmaEncHandle ;


 int CHDERR_DECOMPRESSION_ERROR ;
 int CHDERR_NONE ;
 int LZMA_PROPS_SIZE ;
 scalar_t__ LzmaDec_Allocate (int *,int *,int,int *) ;
 int LzmaDec_Construct (int *) ;
 int LzmaEncProps_Init (TYPE_2__*) ;
 int LzmaEncProps_Normalize (TYPE_2__*) ;
 int LzmaEnc_Create (int *) ;
 int LzmaEnc_Destroy (int ,int *,int *) ;
 scalar_t__ LzmaEnc_SetProps (int ,TYPE_2__*) ;
 scalar_t__ LzmaEnc_WriteProperties (int ,int *,size_t*) ;
 scalar_t__ SZ_OK ;
 int lzma_allocator_init (int *) ;

chd_error lzma_codec_init(void* codec, uint32_t hunkbytes)
{
 CLzmaEncProps encoder_props;
   CLzmaEncHandle enc;
 uint8_t decoder_props[LZMA_PROPS_SIZE];
   lzma_allocator* alloc;
   size_t props_size;
 lzma_codec_data* lzma_codec = (lzma_codec_data*) codec;


 LzmaDec_Construct(&lzma_codec->decoder);







 LzmaEncProps_Init(&encoder_props);
 encoder_props.level = 9;
 encoder_props.reduceSize = hunkbytes;
 LzmaEncProps_Normalize(&encoder_props);


 alloc = &lzma_codec->allocator;
 lzma_allocator_init(alloc);
 enc = LzmaEnc_Create((ISzAlloc*)alloc);
 if (!enc)
  return CHDERR_DECOMPRESSION_ERROR;
 if (LzmaEnc_SetProps(enc, &encoder_props) != SZ_OK)
 {
  LzmaEnc_Destroy(enc, (ISzAlloc*)&alloc, (ISzAlloc*)&alloc);
  return CHDERR_DECOMPRESSION_ERROR;
 }
 props_size = sizeof(decoder_props);
 if (LzmaEnc_WriteProperties(enc, decoder_props, &props_size) != SZ_OK)
 {
  LzmaEnc_Destroy(enc, (ISzAlloc*)alloc, (ISzAlloc*)alloc);
  return CHDERR_DECOMPRESSION_ERROR;
 }
 LzmaEnc_Destroy(enc, (ISzAlloc*)alloc, (ISzAlloc*)alloc);


 if (LzmaDec_Allocate(&lzma_codec->decoder, decoder_props, LZMA_PROPS_SIZE, (ISzAlloc*)alloc) != SZ_OK)
  return CHDERR_DECOMPRESSION_ERROR;


 return CHDERR_NONE;
}
