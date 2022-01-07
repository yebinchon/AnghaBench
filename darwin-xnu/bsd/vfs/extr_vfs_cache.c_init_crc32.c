
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* crc32tab ;

__attribute__((used)) static void init_crc32(void)
{





        unsigned int crc32_polynomial = 0x04c11db7;
 unsigned int i,j;




 for (i = 0; i < 256; i++) {
         unsigned int crc_rem = i << 24;

  for (j = 0; j < 8; j++) {
          if (crc_rem & 0x80000000)
           crc_rem = (crc_rem << 1) ^ crc32_polynomial;
   else
           crc_rem = (crc_rem << 1);
  }
  crc32tab[i] = crc_rem;
 }
}
