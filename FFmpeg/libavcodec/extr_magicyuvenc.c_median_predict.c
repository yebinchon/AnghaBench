
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t ptrdiff_t ;
struct TYPE_4__ {int (* sub_median_pred ) (int*,int*,int*,int,int*,int*) ;} ;
struct TYPE_5__ {TYPE_1__ llvidencdsp; } ;
typedef TYPE_2__ MagicYUVContext ;


 int stub1 (int*,int*,int*,int,int*,int*) ;

__attribute__((used)) static void median_predict(MagicYUVContext *s,
                           uint8_t *src, uint8_t *dst, ptrdiff_t stride,
                           int width, int height)
{
    int left = 0, lefttop;
    int i, j;

    for (i = 0; i < width; i++) {
        dst[i] = src[i] - left;
        left = src[i];
    }
    dst += width;
    src += stride;
    for (j = 1; j < height; j++) {
        left = lefttop = src[-stride];
        s->llvidencdsp.sub_median_pred(dst, src - stride, src, width, &left, &lefttop);
        dst += width;
        src += stride;
    }
}
