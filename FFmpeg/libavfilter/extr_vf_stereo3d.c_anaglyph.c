
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int ana_convert (int const*,int *,int *) ;

__attribute__((used)) static void anaglyph(uint8_t *dst, uint8_t *lsrc, uint8_t *rsrc,
                     ptrdiff_t dst_linesize, ptrdiff_t l_linesize, ptrdiff_t r_linesize,
                     int width, int height,
                     const int *ana_matrix_r, const int *ana_matrix_g, const int *ana_matrix_b)
{
    int x, y, o;

    for (y = 0; y < height; y++) {
        for (o = 0, x = 0; x < width; x++, o+= 3) {
            dst[o ] = ana_convert(ana_matrix_r, lsrc + o, rsrc + o);
            dst[o + 1] = ana_convert(ana_matrix_g, lsrc + o, rsrc + o);
            dst[o + 2] = ana_convert(ana_matrix_b, lsrc + o, rsrc + o);
        }

        dst += dst_linesize;
        lsrc += l_linesize;
        rsrc += r_linesize;
    }
}
