
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int* crc_stream ;


 int POLY ;

__attribute__((used)) static uint32_t append_trivial(uint32_t crc, crc_stream input, size_t length) {
  for (size_t i = 0; i < length; ++i) {
    crc = crc ^ input[i];
    for (int j = 0; j < 8; j++)
      crc = (crc >> 1) ^ 0x80000000 ^ ((~crc & 1) * POLY);
  }
  return crc;
}
