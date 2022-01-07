
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int** Crc32Lookup ;
 int _le32toh (int) ;

uint32_t crc32_slice_by_8(const void* data, size_t length, uint32_t previousCrc32)
{
  uint32_t crc = ~previousCrc32;

  const uint32_t* current;
  const uint8_t* currentChar = (const uint8_t*) data;


  const size_t Unroll = 4;
  const size_t BytesAtOnce = 8 * Unroll;


  uintptr_t unaligned_length = (4 - (((uintptr_t) currentChar) & 3)) & 3;

  while ((length != 0) && (unaligned_length != 0))
  {
    crc = (crc >> 8) ^ Crc32Lookup[0][(crc & 0xFF) ^ *currentChar++];
    length--;
    unaligned_length--;
  }


  current = (const uint32_t*) currentChar;


  while (length >= BytesAtOnce)
  {
    size_t unrolling;
    for (unrolling = 0; unrolling < Unroll; unrolling++)
    {
      uint32_t one = *current++ ^ crc;
      uint32_t two = *current++;
      crc = Crc32Lookup[0][(two>>24) & 0xFF] ^
            Crc32Lookup[1][(two>>16) & 0xFF] ^
            Crc32Lookup[2][(two>> 8) & 0xFF] ^
            Crc32Lookup[3][ two & 0xFF] ^
            Crc32Lookup[4][(one>>24) & 0xFF] ^
            Crc32Lookup[5][(one>>16) & 0xFF] ^
            Crc32Lookup[6][(one>> 8) & 0xFF] ^
            Crc32Lookup[7][ one & 0xFF];


    }

    length -= BytesAtOnce;
  }

  currentChar = (const uint8_t*) current;

  while (length-- != 0)
    crc = (crc >> 8) ^ Crc32Lookup[0][(crc & 0xFF) ^ *currentChar++];

  return ~crc;
}
