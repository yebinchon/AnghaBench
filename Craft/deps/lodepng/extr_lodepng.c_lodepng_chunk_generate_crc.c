
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int lodepng_chunk_length (unsigned char*) ;
 unsigned int lodepng_crc32 (unsigned char*,unsigned int) ;
 int lodepng_set32bitInt (unsigned char*,unsigned int) ;

void lodepng_chunk_generate_crc(unsigned char* chunk)
{
  unsigned length = lodepng_chunk_length(chunk);
  unsigned CRC = lodepng_crc32(&chunk[4], length + 4);
  lodepng_set32bitInt(chunk + 8 + length, CRC);
}
