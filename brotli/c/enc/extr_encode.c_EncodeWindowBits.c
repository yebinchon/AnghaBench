
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ BROTLI_BOOL ;



__attribute__((used)) static void EncodeWindowBits(int lgwin, BROTLI_BOOL large_window,
    uint16_t* last_bytes, uint8_t* last_bytes_bits) {
  if (large_window) {
    *last_bytes = (uint16_t)(((lgwin & 0x3F) << 8) | 0x11);
    *last_bytes_bits = 14;
  } else {
    if (lgwin == 16) {
      *last_bytes = 0;
      *last_bytes_bits = 1;
    } else if (lgwin == 17) {
      *last_bytes = 1;
      *last_bytes_bits = 7;
    } else if (lgwin > 17) {
      *last_bytes = (uint16_t)(((lgwin - 17) << 1) | 0x01);
      *last_bytes_bits = 4;
    } else {
      *last_bytes = (uint16_t)(((lgwin - 8) << 4) | 0x01);
      *last_bytes_bits = 7;
    }
  }
}
