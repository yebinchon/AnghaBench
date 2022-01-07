
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int BrotliEncodeMlen (size_t,int*,size_t*,int*) ;
 int BrotliWriteBits (int,int,size_t*,int *) ;

__attribute__((used)) static void BrotliStoreUncompressedMetaBlockHeader(size_t length,
                                                   size_t* storage_ix,
                                                   uint8_t* storage) {
  uint64_t lenbits;
  size_t nlenbits;
  uint64_t nibblesbits;



  BrotliWriteBits(1, 0, storage_ix, storage);
  BrotliEncodeMlen(length, &lenbits, &nlenbits, &nibblesbits);
  BrotliWriteBits(2, nibblesbits, storage_ix, storage);
  BrotliWriteBits(nlenbits, lenbits, storage_ix, storage);

  BrotliWriteBits(1, 1, storage_ix, storage);
}
