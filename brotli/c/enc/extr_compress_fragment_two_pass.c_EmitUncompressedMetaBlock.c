
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int BrotliStoreMetaBlockHeader (size_t,int,size_t*,scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__ const*,size_t) ;

__attribute__((used)) static void EmitUncompressedMetaBlock(const uint8_t* input, size_t input_size,
                                      size_t* storage_ix, uint8_t* storage) {
  BrotliStoreMetaBlockHeader(input_size, 1, storage_ix, storage);
  *storage_ix = (*storage_ix + 7u) & ~7u;
  memcpy(&storage[*storage_ix >> 3], input, input_size);
  *storage_ix += input_size << 3;
  storage[*storage_ix >> 3] = 0;
}
