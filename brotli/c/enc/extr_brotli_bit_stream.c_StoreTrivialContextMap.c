
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int histogram ;
typedef int HuffmanTree ;


 int BROTLI_MAX_CONTEXT_MAP_SYMBOLS ;
 int BrotliWriteBits (int,int,size_t*,int*) ;
 int BuildAndStoreHuffmanTree (int*,size_t,size_t,int *,int*,int*,size_t*,int*) ;
 int StoreVarLenUint8 (size_t,size_t*,int*) ;
 int memset (int*,int ,size_t) ;

__attribute__((used)) static void StoreTrivialContextMap(size_t num_types,
                                   size_t context_bits,
                                   HuffmanTree* tree,
                                   size_t* storage_ix,
                                   uint8_t* storage) {
  StoreVarLenUint8(num_types - 1, storage_ix, storage);
  if (num_types > 1) {
    size_t repeat_code = context_bits - 1u;
    size_t repeat_bits = (1u << repeat_code) - 1u;
    size_t alphabet_size = num_types + repeat_code;
    uint32_t histogram[BROTLI_MAX_CONTEXT_MAP_SYMBOLS];
    uint8_t depths[BROTLI_MAX_CONTEXT_MAP_SYMBOLS];
    uint16_t bits[BROTLI_MAX_CONTEXT_MAP_SYMBOLS];
    size_t i;
    memset(histogram, 0, alphabet_size * sizeof(histogram[0]));

    BrotliWriteBits(1, 1, storage_ix, storage);
    BrotliWriteBits(4, repeat_code - 1, storage_ix, storage);
    histogram[repeat_code] = (uint32_t)num_types;
    histogram[0] = 1;
    for (i = context_bits; i < alphabet_size; ++i) {
      histogram[i] = 1;
    }
    BuildAndStoreHuffmanTree(histogram, alphabet_size, alphabet_size,
                             tree, depths, bits, storage_ix, storage);
    for (i = 0; i < num_types; ++i) {
      size_t code = (i == 0 ? 0 : i + context_bits - 1);
      BrotliWriteBits(depths[code], bits[code], storage_ix, storage);
      BrotliWriteBits(
          depths[repeat_code], bits[repeat_code], storage_ix, storage);
      BrotliWriteBits(repeat_code, repeat_bits, storage_ix, storage);
    }

    BrotliWriteBits(1, 1, storage_ix, storage);
  }
}
