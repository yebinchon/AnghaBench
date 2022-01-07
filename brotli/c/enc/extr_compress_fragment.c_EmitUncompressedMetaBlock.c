
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int BrotliStoreMetaBlockHeader (size_t const,int,size_t*,scalar_t__*) ;
 int RewindBitPosition (size_t const,size_t*,scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__ const*,size_t const) ;

__attribute__((used)) static void EmitUncompressedMetaBlock(const uint8_t* begin, const uint8_t* end,
                                      const size_t storage_ix_start,
                                      size_t* storage_ix, uint8_t* storage) {
  const size_t len = (size_t)(end - begin);
  RewindBitPosition(storage_ix_start, storage_ix, storage);
  BrotliStoreMetaBlockHeader(len, 1, storage_ix, storage);
  *storage_ix = (*storage_ix + 7u) & ~7u;
  memcpy(&storage[*storage_ix >> 3], begin, len);
  *storage_ix += len << 3;
  storage[*storage_ix >> 3] = 0;
}
