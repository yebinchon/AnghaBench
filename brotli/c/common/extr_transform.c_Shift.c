
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static int Shift(uint8_t* word, int word_len, uint16_t parameter) {

  uint32_t scalar =
      (parameter & 0x7FFFu) + (0x1000000u - (parameter & 0x8000u));
  if (word[0] < 0x80) {

    scalar += (uint32_t)word[0];
    word[0] = (uint8_t)(scalar & 0x7Fu);
    return 1;
  } else if (word[0] < 0xC0) {

    return 1;
  } else if (word[0] < 0xE0) {

    if (word_len < 2) return 1;
    scalar += (uint32_t)((word[1] & 0x3Fu) | ((word[0] & 0x1Fu) << 6u));
    word[0] = (uint8_t)(0xC0 | ((scalar >> 6u) & 0x1F));
    word[1] = (uint8_t)((word[1] & 0xC0) | (scalar & 0x3F));
    return 2;
  } else if (word[0] < 0xF0) {

    if (word_len < 3) return word_len;
    scalar += (uint32_t)((word[2] & 0x3Fu) | ((word[1] & 0x3Fu) << 6u) |
        ((word[0] & 0x0Fu) << 12u));
    word[0] = (uint8_t)(0xE0 | ((scalar >> 12u) & 0x0F));
    word[1] = (uint8_t)((word[1] & 0xC0) | ((scalar >> 6u) & 0x3F));
    word[2] = (uint8_t)((word[2] & 0xC0) | (scalar & 0x3F));
    return 3;
  } else if (word[0] < 0xF8) {

    if (word_len < 4) return word_len;
    scalar += (uint32_t)((word[3] & 0x3Fu) | ((word[2] & 0x3Fu) << 6u) |
        ((word[1] & 0x3Fu) << 12u) | ((word[0] & 0x07u) << 18u));
    word[0] = (uint8_t)(0xF0 | ((scalar >> 18u) & 0x07));
    word[1] = (uint8_t)((word[1] & 0xC0) | ((scalar >> 12u) & 0x3F));
    word[2] = (uint8_t)((word[2] & 0xC0) | ((scalar >> 6u) & 0x3F));
    word[3] = (uint8_t)((word[3] & 0xC0) | (scalar & 0x3F));
    return 4;
  }
  return 1;
}
