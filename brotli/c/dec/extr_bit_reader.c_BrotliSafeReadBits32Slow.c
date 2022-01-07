
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int BrotliBitReaderState ;
typedef int BrotliBitReader ;
typedef int BROTLI_BOOL ;


 int BROTLI_DCHECK (int) ;
 int BROTLI_FALSE ;
 int BROTLI_TRUE ;
 int BrotliBitReaderRestoreState (int * const,int *) ;
 int BrotliBitReaderSaveState (int * const,int *) ;
 int BrotliSafeReadBits (int * const,int,int*) ;

BROTLI_BOOL BrotliSafeReadBits32Slow(BrotliBitReader* const br,
    uint32_t n_bits, uint32_t* val) {
  uint32_t low_val;
  uint32_t high_val;
  BrotliBitReaderState memento;
  BROTLI_DCHECK(n_bits <= 32);
  BROTLI_DCHECK(n_bits > 24);
  BrotliBitReaderSaveState(br, &memento);
  if (!BrotliSafeReadBits(br, 16, &low_val) ||
      !BrotliSafeReadBits(br, n_bits - 16, &high_val)) {
    BrotliBitReaderRestoreState(br, &memento);
    return BROTLI_FALSE;
  }
  *val = low_val | (high_val << 16);
  return BROTLI_TRUE;
}
