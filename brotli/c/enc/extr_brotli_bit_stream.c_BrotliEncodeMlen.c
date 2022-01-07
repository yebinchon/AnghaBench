
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef int uint32_t ;


 int BROTLI_DCHECK (int) ;
 int Log2FloorNonZero (int ) ;

__attribute__((used)) static void BrotliEncodeMlen(size_t length, uint64_t* bits,
                             size_t* numbits, uint64_t* nibblesbits) {
  size_t lg = (length == 1) ? 1 : Log2FloorNonZero((uint32_t)(length - 1)) + 1;
  size_t mnibbles = (lg < 16 ? 16 : (lg + 3)) / 4;
  BROTLI_DCHECK(length > 0);
  BROTLI_DCHECK(length <= (1 << 24));
  BROTLI_DCHECK(lg <= 24);
  *nibblesbits = mnibbles - 4;
  *numbits = mnibbles * 4;
  *bits = length - 1;
}
