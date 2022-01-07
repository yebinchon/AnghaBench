
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int (* diff_bytes ) (int*,int*,int*,int) ;} ;
struct TYPE_6__ {TYPE_1__ llvidencdsp; } ;
typedef TYPE_2__ PNGEncContext ;







 int memcpy (int*,int*,int) ;
 int stub1 (int*,int*,int*,int) ;
 int sub_left_prediction (TYPE_2__*,int*,int*,int,int) ;
 int sub_png_paeth_prediction (int*,int*,int*,int,int) ;

__attribute__((used)) static void png_filter_row(PNGEncContext *c, uint8_t *dst, int filter_type,
                           uint8_t *src, uint8_t *top, int size, int bpp)
{
    int i;

    switch (filter_type) {
    case 131:
        memcpy(dst, src, size);
        break;
    case 129:
        sub_left_prediction(c, dst, src, bpp, size);
        break;
    case 128:
        c->llvidencdsp.diff_bytes(dst, src, top, size);
        break;
    case 132:
        for (i = 0; i < bpp; i++)
            dst[i] = src[i] - (top[i] >> 1);
        for (; i < size; i++)
            dst[i] = src[i] - ((src[i - bpp] + top[i]) >> 1);
        break;
    case 130:
        for (i = 0; i < bpp; i++)
            dst[i] = src[i] - top[i];
        sub_png_paeth_prediction(dst + i, src + i, top + i, size - i, bpp);
        break;
    }
}
