
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;


 int CLIP_10 (int const) ;
 int CLIP_12 (int const) ;

__attribute__((used)) static inline void put_pixel(uint16_t *dst, ptrdiff_t linesize, const int16_t *in, int bits_per_raw_sample) {
    int x, y, src_offset, dst_offset;

    for (y = 0, dst_offset = 0; y < 8; y++, dst_offset += linesize) {
        for (x = 0; x < 8; x++) {
            src_offset = (y << 3) + x;

            if (bits_per_raw_sample == 10) {
                dst[dst_offset + x] = CLIP_10(in[src_offset]);
            } else {
                dst[dst_offset + x] = CLIP_12(in[src_offset]);
            }
        }
    }
}
