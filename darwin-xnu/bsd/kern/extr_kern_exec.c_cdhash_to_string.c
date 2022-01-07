
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CS_CDHASH_LEN ;
 int CS_CDHASH_STRING_SIZE ;

__attribute__((used)) static void cdhash_to_string(char str[CS_CDHASH_STRING_SIZE], uint8_t const * const cdhash) {
    static char const nibble[] = "0123456789abcdef";






    for (int i = 0; i < CS_CDHASH_LEN; ++i) {
      str[i*2] = nibble[(cdhash[i] & 0xf0) >> 4];
      str[i*2+1] = nibble[cdhash[i] & 0x0f];
    }
    str[CS_CDHASH_STRING_SIZE - 1] = 0;
}
