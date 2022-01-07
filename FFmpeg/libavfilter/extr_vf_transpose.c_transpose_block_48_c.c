
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int64_t ;


 int AV_RB48 (int *) ;
 int AV_WB48 (int *,int ) ;

__attribute__((used)) static inline void transpose_block_48_c(uint8_t *src, ptrdiff_t src_linesize,
                                        uint8_t *dst, ptrdiff_t dst_linesize,
                                        int w, int h)
{
    int x, y;
    for (y = 0; y < h; y++, dst += dst_linesize, src += 6) {
        for (x = 0; x < w; x++) {
            int64_t v = AV_RB48(src + x*src_linesize);
            AV_WB48(dst + 6*x, v);
        }
    }
}
