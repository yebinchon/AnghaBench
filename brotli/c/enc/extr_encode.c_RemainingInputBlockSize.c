
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef int BrotliEncoderState ;


 size_t InputBlockSize (int *) ;
 size_t UnprocessedInputSize (int *) ;

__attribute__((used)) static size_t RemainingInputBlockSize(BrotliEncoderState* s) {
  const uint64_t delta = UnprocessedInputSize(s);
  size_t block_size = InputBlockSize(s);
  if (delta >= block_size) return 0;
  return block_size - (size_t)delta;
}
