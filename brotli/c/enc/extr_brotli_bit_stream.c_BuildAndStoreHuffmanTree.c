
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int depth ;
typedef int HuffmanTree ;


 int BrotliConvertBitDepthsToSymbols (scalar_t__*,size_t const,scalar_t__*) ;
 int BrotliCreateHuffmanTree (scalar_t__ const*,size_t const,int,int *,scalar_t__*) ;
 int BrotliStoreHuffmanTree (scalar_t__*,size_t const,int *,size_t*,scalar_t__*) ;
 int BrotliWriteBits (size_t,size_t,size_t*,scalar_t__*) ;
 int StoreSimpleHuffmanTree (scalar_t__*,size_t*,size_t,size_t,size_t*,scalar_t__*) ;
 int memset (scalar_t__*,int ,size_t const) ;

__attribute__((used)) static void BuildAndStoreHuffmanTree(const uint32_t* histogram,
                                     const size_t histogram_length,
                                     const size_t alphabet_size,
                                     HuffmanTree* tree,
                                     uint8_t* depth,
                                     uint16_t* bits,
                                     size_t* storage_ix,
                                     uint8_t* storage) {
  size_t count = 0;
  size_t s4[4] = { 0 };
  size_t i;
  size_t max_bits = 0;
  for (i = 0; i < histogram_length; i++) {
    if (histogram[i]) {
      if (count < 4) {
        s4[count] = i;
      } else if (count > 4) {
        break;
      }
      count++;
    }
  }

  {
    size_t max_bits_counter = alphabet_size - 1;
    while (max_bits_counter) {
      max_bits_counter >>= 1;
      ++max_bits;
    }
  }

  if (count <= 1) {
    BrotliWriteBits(4, 1, storage_ix, storage);
    BrotliWriteBits(max_bits, s4[0], storage_ix, storage);
    depth[s4[0]] = 0;
    bits[s4[0]] = 0;
    return;
  }

  memset(depth, 0, histogram_length * sizeof(depth[0]));
  BrotliCreateHuffmanTree(histogram, histogram_length, 15, tree, depth);
  BrotliConvertBitDepthsToSymbols(depth, histogram_length, bits);

  if (count <= 4) {
    StoreSimpleHuffmanTree(depth, s4, count, max_bits, storage_ix, storage);
  } else {
    BrotliStoreHuffmanTree(depth, histogram_length, tree, storage_ix, storage);
  }
}
