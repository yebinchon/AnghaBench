
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int * crc_stream ;


 int LONG_SHIFT ;
 int SHORT_SHIFT ;
 int _mm_crc32_u32 (int,int const) ;
 int _mm_crc32_u64 (int,int ) ;
 int _mm_crc32_u8 (int,int ) ;
 int long_shifts ;
 int shift_crc (int ,int) ;
 int short_shifts ;

uint32_t crc32c_hw(uint32_t crc, crc_stream buf, size_t len) {
  crc_stream next = buf;
  crc_stream end;



  uint32_t crc0, crc1, crc2;



  crc0 = crc ^ 0xffffffff;



  while (len && ((uintptr_t)next & 7) != 0) {
    crc0 = _mm_crc32_u8((uint32_t)(crc0), *next);
    ++next;
    --len;
  }
  while (len >= 3 * LONG_SHIFT) {
    crc1 = 0;
    crc2 = 0;
    end = next + LONG_SHIFT;
    do {
      crc0 = _mm_crc32_u32(crc0, *(uint32_t *)(next));
      crc1 = _mm_crc32_u32(crc1, *(const uint32_t *)(next + LONG_SHIFT));
      crc2 = _mm_crc32_u32(crc2, *(const uint32_t *)(next + 2 * LONG_SHIFT));
      next += 4;
    } while (next < end);
    crc0 = shift_crc(long_shifts, (uint32_t)(crc0)) ^ crc1;
    crc0 = shift_crc(long_shifts, (uint32_t)(crc0)) ^ crc2;
    next += 2 * LONG_SHIFT;
    len -= 3 * LONG_SHIFT;
  }




  while (len >= 3 * SHORT_SHIFT) {
    crc1 = 0;
    crc2 = 0;
    end = next + SHORT_SHIFT;
    do {
      crc0 = _mm_crc32_u32(crc0, *(const uint32_t *)(next));
      crc1 = _mm_crc32_u32(crc1, *(const uint32_t *)(next + SHORT_SHIFT));
      crc2 = _mm_crc32_u32(crc2, *(const uint32_t *)(next + 2 * SHORT_SHIFT));
      next += 4;
    } while (next < end);
    crc0 = shift_crc(short_shifts, (uint32_t)(crc0)) ^ crc1;
    crc0 = shift_crc(short_shifts, (uint32_t)(crc0)) ^ crc2;
    next += 2 * SHORT_SHIFT;
    len -= 3 * SHORT_SHIFT;
  }



  end = next + (len - (len & 7));
  while (next < end) {
    crc0 = _mm_crc32_u32(crc0, *(const uint32_t *)(next));
    next += 4;
  }

  len &= 7;


  while (len) {
    crc0 = _mm_crc32_u8((uint32_t)(crc0), *next);
    ++next;
    --len;
  }


  return (uint32_t)(crc0) ^ 0xffffffff;
}
