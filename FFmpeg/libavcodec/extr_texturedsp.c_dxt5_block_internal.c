
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 int AV_RL16 (int const*) ;
 int AV_RL32 (int const*) ;
 int AV_WL32 (int*,int) ;
 int decompress_indices (int*,int const*) ;
 int extract_color (int*,int ,int ,int,int ) ;

__attribute__((used)) static inline void dxt5_block_internal(uint8_t *dst, ptrdiff_t stride,
                                       const uint8_t *block)
{
    int x, y;
    uint32_t colors[4];
    uint8_t alpha_indices[16];
    uint16_t color0 = AV_RL16(block + 8);
    uint16_t color1 = AV_RL16(block + 10);
    uint32_t code = AV_RL32(block + 12);
    uint8_t alpha0 = *(block);
    uint8_t alpha1 = *(block + 1);

    decompress_indices(alpha_indices, block + 2);

    extract_color(colors, color0, color1, 1, 0);

    for (y = 0; y < 4; y++) {
        for (x = 0; x < 4; x++) {
            int alpha_code = alpha_indices[x + y * 4];
            uint32_t pixel;
            uint8_t alpha;

            if (alpha_code == 0) {
                alpha = alpha0;
            } else if (alpha_code == 1) {
                alpha = alpha1;
            } else {
                if (alpha0 > alpha1) {
                    alpha = (uint8_t) (((8 - alpha_code) * alpha0 +
                                        (alpha_code - 1) * alpha1) / 7);
                } else {
                    if (alpha_code == 6) {
                        alpha = 0;
                    } else if (alpha_code == 7) {
                        alpha = 255;
                    } else {
                        alpha = (uint8_t) (((6 - alpha_code) * alpha0 +
                                            (alpha_code - 1) * alpha1) / 5);
                    }
                }
            }
            pixel = colors[code & 3] | ((unsigned)alpha << 24);
            code >>= 2;
            AV_WL32(dst + x * 4, pixel);
        }
        dst += stride;
    }
}
