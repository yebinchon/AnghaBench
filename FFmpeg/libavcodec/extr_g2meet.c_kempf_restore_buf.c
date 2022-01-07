
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;


 int FFALIGN (int,int) ;
 int get_bits (int *,int) ;
 int init_get_bits8 (int *,int const*,int) ;
 int memcpy (int *,int const*,int) ;
 int skip_bits_long (int *,int) ;

__attribute__((used)) static int kempf_restore_buf(const uint8_t *src, int len,
                              uint8_t *dst, int stride,
                              const uint8_t *jpeg_tile, int tile_stride,
                              int width, int height,
                              const uint8_t *pal, int npal, int tidx)
{
    GetBitContext gb;
    int i, j, nb, col;
    int ret;
    int align_width = FFALIGN(width, 16);

    if ((ret = init_get_bits8(&gb, src, len)) < 0)
        return ret;

    if (npal <= 2) nb = 1;
    else if (npal <= 4) nb = 2;
    else if (npal <= 16) nb = 4;
    else nb = 8;

    for (j = 0; j < height; j++, dst += stride, jpeg_tile += tile_stride) {
        if (get_bits(&gb, 8))
            continue;
        for (i = 0; i < width; i++) {
            col = get_bits(&gb, nb);
            if (col != tidx)
                memcpy(dst + i * 3, pal + col * 3, 3);
            else
                memcpy(dst + i * 3, jpeg_tile + i * 3, 3);
        }
        skip_bits_long(&gb, nb * (align_width - width));
    }

    return 0;
}
