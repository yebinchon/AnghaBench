
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_short ;
typedef int u_char ;
struct TYPE_3__ {size_t byte; scalar_t__ bit; } ;
typedef TYPE_1__ bitmap_offset_t ;


 scalar_t__ NBBY ;
 int UCHAR_ALL_ONES ;
 int UINT32_ALL_ONES ;
 int USHORT_ALL_ONES ;
 TYPE_1__ bitmap_offset (int) ;
 int byte_set_bits (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
bitmap_set(u_char * map, uint32_t start_bit, uint32_t bit_count)
{
    bitmap_offset_t start;
    bitmap_offset_t end;

    start = bitmap_offset(start_bit);
    end = bitmap_offset(start_bit + bit_count);
    if (start.byte < end.byte) {
 uint32_t n_bytes;

 if (start.bit) {
     map[start.byte] |= byte_set_bits(start.bit, NBBY - 1);
     start.bit = 0;
     start.byte++;
     if (start.byte == end.byte)
  goto end;
 }

 n_bytes = end.byte - start.byte;

 while (n_bytes >= (sizeof(uint32_t))) {
     *((uint32_t *)(map + start.byte)) = UINT32_ALL_ONES;
     start.byte += sizeof(uint32_t);
     n_bytes -= sizeof(uint32_t);
 }
 if (n_bytes >= sizeof(u_short)) {
     *((u_short *)(map + start.byte)) = USHORT_ALL_ONES;
     start.byte += sizeof(u_short);
     n_bytes -= sizeof(u_short);
 }
 if (n_bytes == 1) {
     map[start.byte] = UCHAR_ALL_ONES;
     start.byte++;
     n_bytes = 0;
 }
    }

 end:
    if (end.bit > start.bit) {
 map[start.byte] |= byte_set_bits(start.bit, end.bit - 1);
    }

    return;
}
