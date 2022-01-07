
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t BrotliEncoderMaxCompressedSize(size_t input_size) {

  size_t num_large_blocks = input_size >> 14;
  size_t overhead = 2 + (4 * num_large_blocks) + 3 + 1;
  size_t result = input_size + overhead;
  if (input_size == 0) return 2;
  return (result < input_size) ? 0 : result;
}
