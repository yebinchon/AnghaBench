
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int (* add_paeth_prediction ) (int*,int*,int*,int,int) ;int (* add_bytes_l2 ) (int*,int*,int*,int) ;} ;
typedef TYPE_1__ PNGDSPContext ;


 int OP_AVG ;
 int OP_SUB ;





 int UNROLL_FILTER (int ) ;
 int ff_add_png_paeth_prediction (int*,int*,int*,int,int) ;
 int memcpy (int*,int*,int) ;
 int stub1 (int*,int*,int*,int) ;
 int stub2 (int*,int*,int*,int,int) ;

__attribute__((used)) static void png_filter_row(PNGDSPContext *dsp, uint8_t *dst, int filter_type,
                           uint8_t *src, uint8_t *last, int size, int bpp)
{
    int i, p, r, g, b, a;

    switch (filter_type) {
    case 131:
        memcpy(dst, src, size);
        break;
    case 129:
        for (i = 0; i < bpp; i++)
            dst[i] = src[i];
        if (bpp == 4) {
            p = *(int *)dst;
            for (; i < size; i += bpp) {
                unsigned s = *(int *)(src + i);
                p = ((s & 0x7f7f7f7f) + (p & 0x7f7f7f7f)) ^ ((s ^ p) & 0x80808080);
                *(int *)(dst + i) = p;
            }
        } else {

            UNROLL_FILTER(OP_SUB);
        }
        break;
    case 128:
        dsp->add_bytes_l2(dst, src, last, size);
        break;
    case 132:
        for (i = 0; i < bpp; i++) {
            p = (last[i] >> 1);
            dst[i] = p + src[i];
        }

        UNROLL_FILTER(OP_AVG);
        break;
    case 130:
        for (i = 0; i < bpp; i++) {
            p = last[i];
            dst[i] = p + src[i];
        }
        if (bpp > 2 && size > 4) {


            int w = (bpp & 3) ? size - 3 : size;

            if (w > i) {
                dsp->add_paeth_prediction(dst + i, src + i, last + i, size - i, bpp);
                i = w;
            }
        }
        ff_add_png_paeth_prediction(dst + i, src + i, last + i, size - i, bpp);
        break;
    }
}
