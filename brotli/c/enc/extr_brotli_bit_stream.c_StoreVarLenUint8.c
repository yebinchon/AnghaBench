
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BrotliWriteBits (size_t,size_t,size_t*,int *) ;
 size_t Log2FloorNonZero (size_t) ;

__attribute__((used)) static void StoreVarLenUint8(size_t n, size_t* storage_ix, uint8_t* storage) {
  if (n == 0) {
    BrotliWriteBits(1, 0, storage_ix, storage);
  } else {
    size_t nbits = Log2FloorNonZero(n);
    BrotliWriteBits(1, 1, storage_ix, storage);
    BrotliWriteBits(3, nbits, storage_ix, storage);
    BrotliWriteBits(nbits, n - ((size_t)1 << nbits), storage_ix, storage);
  }
}
