
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;
typedef int FDCTDSPContext ;


 int fdct_get (int *,int *,int,int *) ;

__attribute__((used)) static void calc_plane_dct(FDCTDSPContext *fdsp, uint8_t *src, int16_t * blocks, int src_stride, int mb_count, int chroma, int is_422)
{
    int16_t *block;
    int i;

    block = blocks;

    if (!chroma) {
        for (i = 0; i < mb_count; i++) {
            fdct_get(fdsp, src, src_stride, block + (0 << 6));
            fdct_get(fdsp, src + 16, src_stride, block + (1 << 6));
            fdct_get(fdsp, src + 8 * src_stride, src_stride, block + (2 << 6));
            fdct_get(fdsp, src + 16 + 8 * src_stride, src_stride, block + (3 << 6));

            block += 256;
            src += 32;
        }
    } else if (chroma && is_422){
        for (i = 0; i < mb_count; i++) {
            fdct_get(fdsp, src, src_stride, block + (0 << 6));
            fdct_get(fdsp, src + 8 * src_stride, src_stride, block + (1 << 6));
            block += (256 >> 1);
            src += (32 >> 1);
        }
    } else {
        for (i = 0; i < mb_count; i++) {
            fdct_get(fdsp, src, src_stride, block + (0 << 6));
            fdct_get(fdsp, src + 8 * src_stride, src_stride, block + (1 << 6));
            fdct_get(fdsp, src + 16, src_stride, block + (2 << 6));
            fdct_get(fdsp, src + 16 + 8 * src_stride, src_stride, block + (3 << 6));

            block += 256;
            src += 32;
        }
    }
}
