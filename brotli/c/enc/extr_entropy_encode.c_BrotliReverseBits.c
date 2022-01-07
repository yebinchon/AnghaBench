
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static uint16_t BrotliReverseBits(size_t num_bits, uint16_t bits) {
  static const size_t kLut[16] = {
    0x00, 0x08, 0x04, 0x0C, 0x02, 0x0A, 0x06, 0x0E,
    0x01, 0x09, 0x05, 0x0D, 0x03, 0x0B, 0x07, 0x0F
  };
  size_t retval = kLut[bits & 0x0F];
  size_t i;
  for (i = 4; i < num_bits; i += 4) {
    retval <<= 4;
    bits = (uint16_t)(bits >> 4);
    retval |= kLut[bits & 0x0F];
  }
  retval >>= ((0 - num_bits) & 0x03);
  return (uint16_t)retval;
}
