
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 int AV_WL32 (int*,int ) ;
 int RGBA (int,int,int,unsigned int) ;
 int decompress_indices (int*,int const*) ;

__attribute__((used)) static inline void rgtc_block_internal(uint8_t *dst, ptrdiff_t stride,
                                       const uint8_t *block,
                                       const int *color_tab, int mono, int offset, int pix_size)
{
    uint8_t indices[16];
    int x, y;

    decompress_indices(indices, block + 2);





    for (y = 0; y < 4; y++) {
        for (x = 0; x < 4; x++) {
            int i = indices[x + y * 4];

            int c = color_tab[i];

            if (mono){
                dst [x * pix_size + y * stride + offset] = (uint8_t)c;
            }
            else{
                uint32_t pixel = RGBA(c, c, c, 255U);
                AV_WL32(dst + x * pix_size + y * stride, pixel);
            }
        }
    }
}
